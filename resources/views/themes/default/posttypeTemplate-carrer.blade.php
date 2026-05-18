@extends('themes.default.common.master')
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('content')

<!--------------------------- banner section start ------------------------------------->
<div class="uk-inline uk-inner-banner">
    <img src="{{ $data->banner ? asset('uploads/medium/'.$data->banner) : asset('themes-assets/img/vision.jpg') }}" loading="lazy" alt="{{ $data->post_type }}">
    <div class="uk-overlay uk-overlay-primary uk-position-cover uk-banner-overlay uk-flex uk-flex-column uk-flex-center">
        <div class=" uk-width-1-1 uk-text-center" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  h3, h1;  delay: 400; repeat: false;">
            <h3 class="uk-margin-remove">
                <a href="{{ url('/') }}">HOME</a> / {{ $data->post_type }}
            </h3>
            <h1 class="uk-margin-small-bottom-top">{{ $data->uid }}</h1>
        </div>
    </div>
</div>
<!--------------------------- banner section end ------------------------------------->
<!--------------------------- table section start ------------------------------------->
<section class="uk-section">
    <div class="uk-container uk-container-large">
        <table class="uk-table uk-table-striped uk-table-responsive career-table border-rounded" style="overflow:hidden;" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  tr;  delay: 400; repeat: false;">
            <thead class="career-head">
                <tr>
                    <th>Job Title</th>
                    <th>description</th>
                    <th>Type</th>
                    <th>Apply Now</th>
                </tr>
            </thead>
            <tbody>
				@foreach ($posts as $row)
					<tr>
						<td class="bold-font">{{$row->post_title}}</td>
						<td>{!! $row->post_content !!} </td>
						<td class="bold-font">{{$row->sub_title}}</td>
						<td>
							<a href="#career-form" class="uk-know-btn open-career-form" uk-toggle data-id="{{ $row->id }}" data-title="{{ $row->post_title }}"
                               data-excerpt="{{ $row->post_excerpt }}"> Apply Now <span uk-icon="icon:  triangle-right"></span></a>
						</td>
					</tr>
				@endforeach
            </tbody>
        </table>
    </div>
</section>
<!-- This is the modal -->
<div id="career-form" uk-modal>
    <div class="uk-modal-dialog uk-modal-body uk-padding-remove">
        <button class="uk-modal-close-outside" type="button" uk-close></button>
        <div class="dialog-header">
            <h3 class="uk-margin-remove">KPL Hiring/ Application Form</h3>
        </div>
        <div class="uk-padding-small">
			<p id="job-excerpt" class="uk-margin-remove"></p>
            <hr>
            <small class="uk-text-danger">Fields marked with * are required.</small>
            <form action="{{ route('sendmail_resume') }}" method="POST" enctype="multipart/form-data">
				@csrf
				<input type="hidden" id="g_recaptcha_response" name="g_recaptcha_response"/>
				<input type="hidden" id="position" name="position" value=""/>
                <div class="uk-child-width-1-2@m uk-grid uk-margin-top">
                    <div class="uk-margin-small-bottom">
                        <label for="name">Your Full Name<span><small class="uk-text-danger">*</small></span></label>
                        <input class="uk-input" type="text" placeholder="" aria-label="Input" id="name" name="name" required>
                    </div>
                    <div class="uk-margin-small-bottom">
                        <label for="number">Your Phone Number<span><small class="uk-text-danger">*</small></span></label>
                        <input class="uk-input" type="number" placeholder="" aria-label="Input" id="phone" name="phone" required>
                    </div>
                    <div class="uk-margin-small-bottom">
                        <label for="email">Your Email<span><small class="uk-text-danger">*</small></span></label>
                        <input class="uk-input" type="email" placeholder="" aria-label="Input" id="email" name="email" required>
                    </div>
                    <div class="uk-margin-small-bottom">
                        <label for="year">Experience in Year<span><small class="uk-text-danger">*</small></span></label>
                        <input class="uk-input" type="number" placeholder="" aria-label="Input" id="year" name="experience" required>
                    </div>
                    <div>
                        <label for="ctc">Current CTC<span><small class="uk-text-danger">*</small></span></label>
                        <input class="uk-input" type="text" placeholder="" aria-label="Input" id="ctc" name="ctc" required>
                    </div>
                    <div class="uk-margin-small-bottom">
                        <label for="current">Current Organization<span><small class="uk-text-danger">*</small></span></label>
                        <input class="uk-input" type="text" placeholder="" aria-label="Input" id="current" name="organization" required>
                    </div>
                </div>
                <div class="uk-grid uk-margin-remove-top">
                    <div class="uk-width-2-3@l">
                        <div class="uk-flex">
                            <div class="uk-margin-small-bottom uk-margin-small-right">
                                <div uk-form-custom class="custom-upload uk-bg-primary">
                                    <input type="file" aria-label="Custom controls" accept=".doc,.docx,.pdf" name="cv" required>
                                    <span class="uk-link uk-text-white"><span uk-icon="icon: cloud-upload" class="uk-margin-small-right"></span>Upload CV</span>
                                </div>
                            </div>
                            <div class="uk-margin-small-bottom">
                                <div uk-form-custom class="custom-upload uk-bg-secondary">
                                    <input type="file" aria-label="Custom controls" accept=".doc,.docx,.pdf" name="cover" required>
                                    <span class="uk-link uk-text-white"><span uk-icon="icon: cloud-upload" class="uk-margin-small-right"></span>Upload Cover Letter</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="uk-widh-1-2@l uk-flex uk-flex-middle">
                        <div>
                            <button type="submit" class="uk-button uk-primary-btn uk-border-pill">
                                <div class="uk-flex uk-flex-middle uk-flex-center" style="gap:10px;">
                                    <span class="uk-btn-text">SUBMIT NOW</span>
                                    <span class="uk-btn-icon">
                                        <i class="fa-solid fa-paw"></i>
                                    </span>
                                </div>
							</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--------------------------- table section end ------------------------------------->
<script>
    document.addEventListener('DOMContentLoaded', () => {
        const buttons = document.querySelectorAll('.open-career-form');
        buttons.forEach(btn => {
            btn.addEventListener('click', () => {
                const jobId = btn.dataset.id;
                const excerpt = btn.dataset.excerpt;
                const title = btn.dataset.title;

                document.getElementById('position').value = jobId;
                document.getElementById('job-excerpt').innerHTML = `<strong>${title}</strong><br>${excerpt}`;
            });
        });
    });
</script>

<script src="https://www.google.com/recaptcha/api.js?render={{env('SITE_KEY')}}"></script>
<script>
	grecaptcha.ready(function () {
		function executeRecaptcha() {
			grecaptcha.execute('<?php echo env("SITE_KEY"); ?>', {action: 'homepage'}).then(function (token) {
				document.getElementById('g_recaptcha_response').value = token;
			});
		}

		// Initial execution of reCAPTCHA
		executeRecaptcha();

		// Refresh the reCAPTCHA token every 100 seconds (less than 2 minutes)
		setInterval(executeRecaptcha, 900000);
	});

</script>
@endsection