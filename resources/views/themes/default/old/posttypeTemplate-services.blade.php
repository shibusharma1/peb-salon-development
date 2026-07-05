@extends('themes.default.common.master')
@section('meta_keyword',$data->meta_keyword)
@section('meta_description',$data->meta_description)
@section('content')
    @include('themes.default.common.hero-banner')

<!-- Services -->
<section class="services section-bg section-space">
	<div class="container">
		<div class="row  wow animate__fadeInUp" data-wow-duration="1s" data-wow-offset="50">
			<div class="section-title text-left col-12 p-4">
				<h4>{{$data->post_type}}</h4> <br>
				<h2><b>{!! $data->caption !!} </b></h2>
				<p>{!! $data->content !!} </p>
			</div>
		</div>
		<div class="row mt-4  wow animate__fadeInUp" data-wow-duration="1s" data-wow-offset="50">
			@foreach ($posts as $row)
				<div class="col-md-6 p-2 ">
					<div class="card p-5" style="min-height :266px;">
						<div class="d-flex">
							<div class="services-img">
								<p>{{$loop->iteration}}</p>
							</div>
							<div class="services-text ml-4">
								<a href="{{url(geturl($row['uri'],$row['page_key']))}}">
									<h3>{{$row->post_title}}</h3>
								</a>
								<p class="mt-3 mb-3">{{$row->post_excerpt}}</p>
								<div class="single-service">
									<a href="{{url(geturl($row['uri'],$row['page_key']))}}" class="btn">Learn More <i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			@endforeach
		</div>
	</div>
</section>
<!--/ End Services -->

@endsection