<?php

namespace App\Http\Controllers\FrontendControllers;

use App\Mail\ContactMail;
use App\Models\Inquiry\CareerModel;
use App\Models\Inquiry\ContactModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Banners\BannerModel;
use App\Models\MultipleBanners\MultipleBannerModel;
use App\Models\Posts\PostModel;
use App\Models\Posts\AssociatedPostModel;
use App\Models\Posts\PostCategoryModel;
use App\Models\Posts\PostImageModel;
use Carbon\Carbon;
use App\Models\Posts\PostDocModel;
use App\Models\Settings\SettingModel;
use App\Models\Galleries\ImageGalleryModel;
use App\Models\Galleries\ImageGalleryCategoryModel;
use App\Models\Galleries\VideoGalleryModel;
use Mail;
use App\Mail\SendMail;
use App\Mail\SendMailContact;
use App\Mail\SendResume;
use App\Mail\CareerApply;
use App\Mail\CareerMail;
use App\Models\Posts\PostTypeModel;
use Exception;
use Illuminate\Support\Str;
use Illuminate\Validation\ValidationException;

class FrontpageController extends Controller
{
  public function index()
  {
    $banners = BannerModel::first();
    $about = PostModel::where('post_type', 1)->with('associatePosts')->orderBy('post_order', 'asc')->first();
    $services = PostModel::where('post_type', 11)->orderBy('post_order')->paginate(3);
    $offers = PostModel::where('post_type', 13)->orderBy('post_order')->paginate(3);
    $missions = PostTypeModel::where('id', '9')->first();
    $mission = PostModel::where(['id' => '22', 'post_type' => 9])->first();
    $vision = PostModel::where(['id' => '23', 'post_type' => 9])->first();
    $goal = PostModel::where(['id' => '24', 'post_type' => 9])->first();
    $blog = PostTypeModel::where('id', '3')->first();
    $blogs = PostModel::where('post_type', '3')->orderBy('post_order', 'asc')->take(5)->get();
    $frontpageData = PostTypeModel::where('id', '10')->first();

    return view('themes.default.frontpage', compact('banners', 'about', 'services', 'offers', 'missions', 'mission', 'vision', 'goal', 'blog', 'blogs', 'frontpageData'));
  }

  public function posttype($uri)
  {

    if (!check_posttype_uri($uri)) {
      abort(404);
    }
    $setting = SettingModel::where('id', 1)->first();
    $data = PostTypeModel::where('uri', $uri)->first();

    $tmpl['template'] = 'page';
    if ($tmpl['template']) {
      $data['template'] = $data['template'];
    }

    if ($data) {
      $posts = PostModel::where('post_type', $data->id)->with('associatePosts')->orderBy('post_order', 'asc')->paginate(6);
    }
    // dd($posts);
    $documents = PostDocModel::where('post_id', $data['id'])->orderBy('ordering', 'desc')->get();

    $categories = collect();
    $galleries = collect();
    $pricingItems = collect();
    $founder = collect();

    if ($data->uri === 'photogallery') {
      $categories = ImageGalleryCategoryModel::whereHas('galleries')->orderBy('created_at')->get();

      $galleries = ImageGalleryModel::with('category')
        ->orderBy('created_at', 'DESC')
        ->get();
    }
    $services = PostModel::where('post_type', 11)->orderBy('post_order')->get();

    if ($data->uri === 'pricing') {
      $categories = PostCategoryModel::where('post_type', 11)
        ->orderBy('ordering')
        ->get();

      $pricingItems = PostModel::where('post_type', 14)
        ->orderBy('post_order')
        ->get();
    }
    $founder = $posts->first();

    return view('themes.default.' . $data['template'] . '', compact('data', 'documents', 'founder', 'posts', 'setting', 'categories', 'pricingItems', 'galleries', 'services'));
  }

  public function pagedetail($uri)
  {

    if (!check_uri($uri)) {
      abort(404);
    }
    $data = PostModel::where('uri', $uri)->orWhere('page_key', $uri)->first();

    $tmpl['template'] = 'single';
    if ($tmpl['template']) {
      $data['template'] = $data['template'];
    }

    if ($data->id) {
      $data->visiter = $data->visiter + 1;
      $data->save();
    }

    $pos_type = PostTypeModel::where('id', $data->post_type)->first();
    $documents = PostDocModel::where('post_id', $data['id'])->orderBy('ordering', 'desc')->get();
    if ($data && $data->post_parent == '0') {
      $data_child = PostModel::where('post_parent', $data['id'])->with('associatePosts')->orderBy('post_order', 'asc')->get();
      $associated_posts = AssociatedPostModel::whereIn('post_id', $data_child->pluck('id'))->paginate(8);
    } else {
      $data_child = PostModel::where('post_type', $data->post_type)->where('post_parent', $data['post_parent'])->with('associatePosts')->orderBy('id', 'asc')->get();
      $associated_posts = AssociatedPostModel::where('post_id', $data['id'])->paginate(8);
    }
    $related_posts = PostModel::where('post_type', $data->post_type)->where('id', '!=', $data['id'])->orderBy('id', 'asc')->get();
    $multiphotos = $data->images()->orderBy('created_at', 'desc')->paginate(6);
    // dd( $data,$data_child,$related_posts);

    return view('themes.default.' . $data['template'] . '', compact('data', 'data_child', 'associated_posts', 'documents', 'pos_type', 'related_posts', 'multiphotos'));
  }

  public function product_detail($uri)
  {
    $data = AssociatedPostModel::where('uri', $uri)->first();
    $post = PostModel::where('id', $data->post_id)->with('associatePosts')->first();
    $related = AssociatedPostModel::where('post_id', $post->id)->where('id', '!=', $data->id)->get();
    // dd('test',$data,$post);
    return view('themes.default.productdetail', compact('data', 'post', 'related'));
  }

  public function pagedetail_child($parenturi, $uri)
  {
    $data = PostModel::where('uri', $uri)->orWhere('page_key', $uri)->first();

    $tmpl['template'] = 'single';
    if ($tmpl['template']) {
      $data['template'] = $data['template'];
    }

    if ($data->id) {
      $data->visiter = $data->visiter + 1;
      $data->save();
    }

    $data_child = PostModel::where('id', $data['post_parent'])->first();
    if ($data_child) {

      $data['template'] = $data_child['template_child'];
    }
    $associated_posts = array();
    if ($data) {
      $associated_posts = AssociatedPostModel::where('post_id', $data['id'])->get();
    }
    $post_id = $data->id;
    $documents = PostDocModel::where('post_id', $data['id'])->orderBy('ordering', 'desc')->get();
    $pos_type = PostTypeModel::where('id', $data->post_type)->first();

    return view('themes.default.' . $data['template'] . '', compact('data', 'data_child', 'associated_posts', 'documents', 'pos_type'));
  }

  public function servicetype($category_uri)
  {
    $category = PostCategoryModel::where('uri', $category_uri)->first();
    if ($category) {
      $data = PostModel::where('post_category', $category->id)->orderBy('post_order', 'desc')->get();
      return view('themes.default.service-list', compact('data', 'category'));
    }
    return false;
  }

  public function apply($parenturi, $uri)
  {
    $data = PostModel::where('uri', $uri)->orWhere('page_key', $uri)->first();
    if ($data) {
      return view('themes.default.apply', compact('data'));
    }
  }

  public function navigation($uri)
  {
    $getId = PostModel::where(['uri' => $uri])->first();
    $childCount = PostModel::where(['post_parent' => $getId->id])->count();
    if ($childCount > 0) {
      $parent_post = PostModel::where('uri', $uri)->first();
      $post = PostModel::where(['post_parent' => intval($getId->id)])->orderBy('post_order', 'asc')->paginate(15);
      $template = $parent_post->template;
    } else {
      $parent_post = PostModel::where('uri', $uri)->first();
      $post = PostModel::where('uri', $uri)->first();
      $template = $post->template;
      $news_updates = PostModel::where(['post_type' => 9])->orderBy('post_order', 'asc')->paginate(15);
    }
    $bod = PostModel::where(['post_type' => 12])->get();
    return view('themes.default.' . $template . '', compact('post', 'bod', 'parent_post', 'news_updates'));
  }

  public function category_navigation($uri)
  {
    $post_category = PostCategoryModel::where('uri', trim($uri))->first();
    if ($post_category->id == 2) {
      $data =  PostModel::where(['post_category' => $post_category->id])->orderBy('post_order', 'asc')->paginate(15);
      return view('themes.default.completed', compact('data', 'post_category'));
    } else {
      $data =  PostModel::where(['post_category' => $post_category->id])->orderBy('post_order', 'asc')->paginate(15);
      return view('themes.default.ongoing', compact('data', 'post_category'));
    }
  }

  /***********************************
   ******** Root Navigation ***********
   ************************************/

  public function photo_gallery($cat_id)
  {
    $data = ImageGalleryModel::where(['category_id' => $cat_id])->get();
    $cat = ImageGalleryCategoryModel::where(['id' => $cat_id])->first();
    return view('themes.default.photo_gallery_thumbnail', compact('data', 'cat'));
  }

  public function sendmail()
  {
    $data = SettingModel::where('id', 1)->first();
    Mail::to($data->email_primary)->send(new SendMail());
    return redirect()->back()->with('message', 'Contact message successfully sent.');
  }

  public function sendmail_contact(Request $request)
  {
    // dd($request->all());
    // $g_recaptcha_response = $request->input('g_recaptcha_response');
    // $result = $this->getCaptcha($g_recaptcha_response);
    // if ($result->success == true) {
    try {
      $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|email|max:255',
        'phone' => 'required|string|max:20',
        'service' => 'required|string|max:255',
        'appointment_date' => 'required|date|after_or_equal:today',
        'appointment_time' => 'required',
        'message' => 'nullable|string|max:1000',
      ]);

      if ($request->appointment_date == now()->toDateString()) {
        $selectedTime = Carbon::parse($request->appointment_time);
        if ($selectedTime->lessThan(now())) {
          return redirect()->back()
            ->withInput()
            ->with([
              'error' => true,
              'message' => 'Please select a future time for today.'
            ]);
        }
      }

      $time = Carbon::parse($request->appointment_time);

      $opening = Carbon::parse('09:00');
      $closing = Carbon::parse('19:00');

      if ($time->lt($opening) || $time->gt($closing)) {

        return redirect()->back()
          ->withInput()
          ->with([
            'error' => true,
            'message' => 'Appointments can only be booked between 9:00 AM and 7:00 PM.'
          ]);
      }

      $appointmentExists = ContactModel::where('appointment_date', $request->appointment_date)
        ->where('appointment_time', $request->appointment_time)
        ->exists();

      if ($appointmentExists) {
        return redirect()->back()
          ->withInput()
          ->with([
            'error' => true,
            'message' => 'This appointment is already booked. Please choose another date or time.'
          ]);
      }

      if ($request->isMethod('post')) {
        ContactModel::create([
          'full_name'        => $request->name,
          'email'            => $request->email,
          'phone'            => $request->phone,
          'service'          => $request->service,
          'appointment_date' => $request->appointment_date,
          'appointment_time' => $request->appointment_time,
          'message'          => $request->message,
          'status'           => 'Pending',
        ]);
        // return new ContactMail();
        // Mail::to($request->email)->send(new ContactMail());
        $name = $request->name;
        $message = "<p>Thank you for contacting us. One of our team will be in touch with you soon.</p>";
        return view('themes.default.inquiry-success', compact('message', 'name'));
      }
    } catch (ValidationException $e) {
      return redirect()->back()->with([
        'error' => true,
        'message' => $e->validator->errors()->all()
      ]);
    } catch (Exception $e) {
      return redirect()->back()->with([
        'error' => true,
        'message' => app()->isLocal() ? $e->getMessage() : 'Something went wrong. Please try again.'
      ]);
    }
    // } else {
    //   return redirect()->back()->with([
    //     'error' => true,
    //     'message' => 'You are Robot.'
    //   ]);
    // }
  }

  public function sendmail_resume(Request $request)
  {
    // dd('test',$request->all());
    $g_recaptcha_response = $request->input('g_recaptcha_response');
    $result = $this->getCaptcha($g_recaptcha_response);
    if ($result->success == true) {
      try {
        $request->validate([
          'position' => 'required|exists:cl_posts,id',
          'name' => 'required|string|max:255',
          'phone' => 'required|string|max:20',
          'email' => 'required|email|max:255',
          'experience' => 'required|numeric|min:0',
          'ctc' => 'required|string',
          'organization' => 'required|string|max:255',
          'cv' => 'required|mimes:doc,docx,pdf|max:2048',
          'cover' => 'required|mimes:doc,docx,pdf|max:2048'
        ]);

        $position = PostModel::where('id', $request->position)->first();
        $cvFile = $request->file('cv');
        $cvName = time() . '-' . $cvFile->getClientOriginalName();
        $cvFile->move(public_path('uploads/cv'), $cvName);

        $coverFile = $request->file('cover');
        $coverName = time() . '-' . $coverFile->getClientOriginalName();
        $coverFile->move(public_path('uploads/coverletter'), $coverName);
        $create = CareerModel::create([
          'fname'    => $request->name,
          'lname'    => $request->last_name,
          'email'    => $request->email,
          'number'   => $request->phone,
          'message'  => $request->experience,
          'cv'       => $cvName,
          'cover'    => $coverName,
          'subject'  => $request->ctc,
          'country'  => $request->organization,
          'position' => $position->post_title,
        ]);
        return new CareerMail();
        // Mail::to($request->email)->send(new CareerMail());
        $name = $request->name;
        $message = "<p>Thank you for applying. One of our team will be in touch with you soon.</p>";

        return view('themes.default.inquiry-success', compact('message', 'name'));

        // return redirect('/')->with([
        //     'success' => true,
        //     'message' => 'Quotation Sent Successfully. One of our member will contact you soon.'
        // ]);
      } catch (ValidationException $e) {
        return redirect()->back()->with([
          'error' => true,
          'message' => $e->validator->errors()->all()
        ]);
      } catch (Exception $e) {
        return redirect()->back()->with([
          'error' => true,
          'message' => app()->isLocal() ? $e->getMessage() : 'Something went wrong. Please try again.'
        ]);
      }
    } else {
      return redirect()->back()->with([
        'error' => true,
        'message' => 'You are Robot.'
      ]);
    }
  }

  // public function sendmail_resume(Request $request)
  // {
  //   try{
  //     $g_recaptcha_response = $request->input('g_recaptcha_response2');
  //     $result = $this->getCaptcha($g_recaptcha_response);

  //     if ($result->success == true) {
  //       // dd($request->all());
  //         $validated = $request->validate([
  //           'position' => 'required|exists:posts,id',
  //           'name' => 'required|string|max:255',
  //           'phone' => 'required|string|max:20',
  //           'email' => 'required|email|max:255',
  //           'experience' => 'required|numeric|min:0',
  //           'ctc' => 'required|string',
  //           'organization' => 'required|string|max:255',
  //           'cv' => 'required|mimes:doc,docx,pdf|max:2048',
  //           'cover' => 'required|mimes:doc,docx,pdf|max:2048'
  //         ]);

  //         $cvFile = $request->file('cv');
  //         $cvName = time() . '-' . $cvFile->getClientOriginalName();
  //         $cvFile->move(public_path('uploads/cv'), $cvName);

  //         $coverFile = $request->file('cover');
  //         $coverName = time() . '-' . $coverFile->getClientOriginalName();
  //         $coverFile->move(public_path('uploads/coverletter'), $coverName);
  //         $create = CareerModel::create([
  //             'fname'    => $request->name,
  //             'lname'    => $request->last_name,
  //             'email'    => $request->email,
  //             'number'   => $request->phone,
  //             'message'  => $request->experience,
  //             'cv'       => $cvName,
  //             'cover'    => $coverName,
  //             'subject'  => $request->ctc,
  //             'country'  => $request->organization,
  //             'position' => $request->position,
  //         ]);
  //         // return new CareerMail();
  //         $name = $request->name;
  //         $message = "<p>Thanks for applying. One of our team will be in touch with you soon.</p>";

  //         return view('themes.default.inquiry-success', compact('message', 'name'));
  //     } else {
  //         return back()->with(['error'=> true,
  //         'message'=>'Please try again']);
  //     }
  //   }catch(Exception $e){
  //     return back()->with(['error'=> true,
  //         'message'=> $e->getMessage() ]);
  //   }
  // }


  private function getCaptcha($Secretkey)
  {
    $secret = env('SECRET_KEY');
    $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret={$secret}&response={$Secretkey}");
    $return = json_decode($response);
    return $return;
  }

  public function career_navigation(Request $request)
  {
    $data['career_title'] = $request->input('post_title');
    return view('themes.default.apply', $data);
  }

  public function career_apply()
  {
    $data['career_title'] = request()->segment(3);
    return view('themes.default.apply', $data);
  }

  public function career_apply_action()
  {
    $data = SettingModel::where('id', 1)->first();
    Mail::to($data->email_primary)->send(new CareerApply());
    return redirect()->back()->with('message', 'Successfully Applied.');
  }

  public function postby_category($id)
  {
    $post_category = PostCategoryModel::where(['id' => $id])->first();
    $data = PostModel::where(['post_category' => $id])->paginate(20);
    if ($data) {
      return view('themes.default.postbycategory', compact('data', 'post_category'));
    }
    return false;
  }

  public function postby_parent($id)
  {
    $childCount = PostModel::where(['post_parent' => $id])->count();
    if ($childCount > 0) {
      $parent_post = PostModel::where('post_parent', $id)->first();
      $post = PostModel::where(['post_parent' => intval($id)])->orderBy('post_order', 'asc')->paginate(15);
      return view('themes.default.template-project-list', compact('post', 'parent_post'));
    }
    return false;
  }
}
