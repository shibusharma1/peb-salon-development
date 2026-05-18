<?php

namespace App\Http\ViewComposers;

use Illuminate\Contracts\View\view;
use App\Models\Settings\SettingModel;
use App\Models\Posts\PostModel;
use App\Models\Posts\PostTypeModel;

class FooterComposer{

	 public function __construct()
    {
        // Dependencies automatically resolved by service container...
    }

	public function compose(View $view){
		
		$view->with('navigations', PostTypeModel::where('is_footer_menu', 1)->orderBy('ordering','asc')->get());
		$view->with('products', PostModel::where(['post_type'=>'2','post_parent'=>'0'])->get());
		$view->with('setting', SettingModel::where('id',1)->first());

		$view->with('footer',PostModel::where(['post_category'=>'1'])
			->orderBy('post_order','asc')
		->get());
	}	
}