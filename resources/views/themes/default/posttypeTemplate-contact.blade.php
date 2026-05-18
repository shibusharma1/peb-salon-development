@extends('themes.default.common.master')
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('content')
	<!--------------------------- banner section start ------------------------------------->
	<div class="uk-inline uk-inner-banner">
		<img src="{{ $data->banner ? asset('uploads/medium/'.$data->banner) : asset('themes-assets/img/commit.jpg')}}" loading="lazy" alt="{{ $data->post_type }}">
		<div class="uk-overlay uk-overlay-primary uk-position-cover uk-banner-overlay uk-flex uk-flex-column uk-flex-center">
			<div class=" uk-width-1-1 uk-text-center" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: h3, h1;  delay: 400; repeat: false;">
				<h3 class="uk-margin-remove">
					<a href="{{url('/')}}">HOME</a> / {{ $data->post_type }}
				</h3>
				<h1 class="uk-margin-small-bottom-top">{{ $data->uid }}</h1>
			</div>
		</div>
	</div>
	<!--------------------------- banner section end ------------------------------------->
	<section class="uk-section">
		<div class="uk-container uk-container-large" uk-scrollspy=" cls: uk-animation-slide-bottom-small; target:  .block;  delay: 500; repeat: false;">
			<div class="uk-container  uk-margin-bottom border-rounded block">
				{!! $setting->google_map !!}
			</div>
			<div class="uk-margin-bottom  uk-text-center block">
				<h4 class="f-20 uk-text-bold">SHARE THIS:</h4>
				<div class="uk-footer-icon">
					<a href="" class="uk-icon-button uk-margin-small-right" uk-icon="facebook"></a>
					<a href="" class="uk-icon-button uk-margin-small-right" uk-icon="instagram"></a>
					<a href="" class="uk-icon-button uk-margin-small-right" uk-icon="x"></a>
					<a href="" class="uk-icon-button uk-margin-small-right" uk-icon="youtube"></a>
				</div>
			</div>
			<div class="uk-container block">
				<div class="uk-child-width-1-2@m uk-grid uk-grid-match">
					<div class="uk-margin-bottom">
						<form action="{{ route('sendmail_contact') }}" method="POST" class="uk-contact-form">
							@csrf
							<input type="hidden" id="g_recaptcha_response" name="g_recaptcha_response"/>
							<h2 class="uk-text-primary uk-margin-remove ">ENQUIRY NOW</h2>
							<div class=" uk-child-width-1-2@s uk-grid">
								<div class="uk-margin-top">
									<label class="uk-form-label uk-text-bold" for="firstname">First Name</label>
									<div class="uk-form-controls">
										<input class="uk-input" id="firstnameform-stacked-text" type="text" name="fname">
									</div>
								</div>
								<div class="uk-margin-top">
									<label class="uk-form-label uk-text-bold" for="lastname">Last Name</label>
									<div class="uk-form-controls">
										<input class="uk-input" id="lastname" type="text" name="lname">
									</div>
								</div>
								<div class="uk-margin-top">
									<label class="uk-form-label uk-text-bold" for="email">Email</label>
									<div class="uk-form-controls">
										<input class="uk-input" id="email" type="email" name="email">
									</div>
								</div>
								<div class="uk-margin-top">
									<label class="uk-form-label uk-text-bold" for="contact">Contact</label>
									<div class="uk-form-controls">
										<input class="uk-input" id="contact" type="number" name="phone">
									</div>
								</div>
							</div>
							<div class="uk-margin uk-margin-remove-bottom">
								<label class="uk-form-label uk-text-bold" for="contact">Message</label>
								<div class="uk-form-controls">
									<textarea name="message" class="uk-textarea" rows="3" name="message"></textarea>
								</div>
								<button type="submit" class="uk-button uk-primary-btn uk-border-pill uk-margin-top">
									<div class="uk-flex uk-flex-middle uk-flex-center" style="gap:10px;">
										<span class="uk-btn-text">SEND MESSAGE</span>
										<span class="uk-btn-icon">
											<i class="fa-solid fa-paw"></i>
										</span>
									</div>
								</button>
							</div>
						</form>
					</div>
					<div>
						<div class="uk-box-shadow-small uk-padding-small uk-flex uk-flex-middle uk-flex-center">
							<div>
								<h2 class="uk-text-primary">GET IN TOUCH WITH US</h2>
								<div class="uk-grid uk-grid-collapse  uk-margin-bottom">
									<div class="uk-width-1-6 uk-flex uk-flex-center">
										<span class="contact-box"><i class="fa fa-phone "></i></span>
									</div>
									<div class="uk-width-5-6">
										<p class="uk-margin-remove uk-text-bold " style="font-size:20px;">Call us on </p>
										<p class="uk-margin-remove">{{$setting->phone}}, {{$setting->phone2}}</p>
									</div>
								</div>
								<div class="uk-grid uk-grid-collapse  uk-margin-bottom">
									<div class="uk-width-1-6 uk-flex uk-flex-center">
										<span class="contact-box"> <i class="fa fa-envelope "></i> </span>
									</div>
									<div class="uk-width-5-6">
										<p class="uk-margin-remove uk-text-bold " style="font-size:20px;">Send a mail to</p>
										<p class="uk-margin-remove">{{$setting->email_primary}}</p>
									</div>
								</div>
								<div class="uk-grid uk-grid-collapse  uk-margin-bottom">
									<div class="uk-width-1-6 uk-flex uk-flex-center">
										<span class="contact-box"><i class="fa fa-map-marker "></i></span>
									</div>
									<div class="uk-width-5-6">
										<p class="uk-margin-remove uk-text-bold " style="font-size:20px;">Locate us</p>
										<p class="uk-margin-remove"> <b>Corporate Office :-</b> <br>
											{{$setting->address}}<br>
											<b>Factory :-</b> <br>
											{{$setting->address2}}
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

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