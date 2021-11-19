@extends('layouts.user')

@section('custom-css')
<link href="{{asset('assets/css/tooltip.css')}}" id="bootstrap-style" rel="stylesheet" type="text/css" />
<style type="text/css">
	.form-check-input-success:checked {
		background-color: green !important;
		border-color: green !important;
	}
</style>
@endsection

@section('page-content')


<div class="container-fluid">

	<!-- start page title -->
	<div class="row">
		<div class="col-12">
			<div class="page-title-box d-sm-flex align-items-center justify-content-between">
				<h4 class="mb-sm-0 font-size-18">Sales Funnels</h4>

				<div class="page-title-right">
					<a href="{{route('custom-sales-funnels')}}" class="btn btn-success">Custom Funnel</a>
				</div>

			</div>
		</div>
	</div>
	<!-- end page title -->
	@if(\Session::has('success'))
	<div class="row justify-content-center">
		<div class="col-lg-6">
			<div class="text-center mb-5">
				
				<div class="alert alert-success alert-dismissible fade show" role="alert">
					{!! \Session::get('success') !!}
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>

				

			</div>
		</div>
	</div>
	@endif
	<div class="row">
		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">1</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<div class="owl-carousel owl-theme sale-funnel-img1">
						<div class="">
							<a  href="{{route('image-index','army_capture.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/army_capture.png')}}">
							</a>
						</div>
						<div class="">
							<a href="{{route('image-index','army_landing.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/army_landing.png')}}">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">2</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<div class="owl-carousel owl-theme sale-funnel-img1">
						<div class="">
							<a  href="{{route('image-index','interior_capture.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/interior_capture.png')}}">
							</a>
						</div>
						<div class="">
							<a href="{{route('image-index','interior_landing.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/interior_landing.png')}}">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">3</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<div class="owl-carousel owl-theme sale-funnel-img1">
						<div class="">
							<a  href="{{route('image-index','marketing-and-productivity-capture-software.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/marketing-and-productivity-capture-software.png')}}">
							</a>
						</div>
						<div class="">
							<a href="{{route('image-index','marketing-and-productivity-software-landing.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/marketing-and-productivity-software-landing.png')}}">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">4</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<div class="owl-carousel owl-theme sale-funnel-img1">
						<div class="">
							<a  href="{{route('image-index','Pizza_capture.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/Pizza_capture.png')}}">
							</a>
						</div>
						<div class="">
							<a href="{{route('image-index','pizza_landing.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/pizza_landing.png')}}">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">5</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<div class="owl-carousel owl-theme sale-funnel-img1">
						<div class="">
							<a  href="{{route('image-index','productivity-software-capture.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/productivity-software-capture.png')}}">
							</a>
						</div>
						<div class="">
							<a href="{{route('image-index','productivity-software-landing.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/productivity-software-landing.png')}}">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">6</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<div class="owl-carousel owl-theme sale-funnel-img1">
						<div class="">
							<a  href="{{route('image-index','car-sales-capture.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/car-sales-capture.png')}}">
							</a>
						</div>
						<div class="">
							<a href="{{route('image-index','car-sales-landing.png')}}" target="_blank" title="">
								<img class="img-fluid sale-funnel-img" src="{{asset('assets/images/sales_funnels/car-sales-landing.png')}}">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<br/>
		<br/>
		<br/>
		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">2</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<img src="{{asset('assets/images/sales_funnels/Screenshot_142.png')}}" class="sale-funnel-img">
				</div>
			</div>
		</div>
		
		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">3</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<img src="{{asset('assets/images/sales_funnels/Screenshot_143.png')}}" class="sale-funnel-img">
				</div>
			</div>
		</div>

		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">4</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<img src="{{asset('assets/images/sales_funnels/Screenshot_144.png')}}" class="sale-funnel-img">
				</div>
			</div>
		</div>
		
		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">5</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<img src="{{asset('assets/images/sales_funnels/Screenshot_145.png')}}" class="sale-funnel-img">
				</div>
			</div>
		</div>

		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">6</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<img src="{{asset('assets/images/sales_funnels/Screenshot_146.png')}}" class="sale-funnel-img">
				</div>
			</div>
		</div>

		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">7</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<img src="{{asset('assets/images/sales_funnels/Screenshot_147.png')}}" class="sale-funnel-img">
				</div>
			</div>
		</div>

		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">8</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<img src="{{asset('assets/images/sales_funnels/Screenshot_148.png')}}" class="sale-funnel-img">
				</div>
			</div>
		</div>
		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">9</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<img src="{{asset('assets/images/sales_funnels/Screenshot_149.png')}}" class="sale-funnel-img">
				</div>
			</div>
		</div>
		<div class="col-xl-4 col-md-6">
			<div class="card plan-box">
				<div class="card-body p-4">
					<div class="media">
						<div class="media-body">
							<h4 class="h4-blue">10</h4>
							<p class="text-muted"></p>
						</div>
						<div class="ms-3">
							<!-- <i class="bx bx-question-mark h1 text-primary" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
							</i> -->
						</div>
					</div>
					<img src="{{asset('assets/images/sales_funnels/Screenshot_150.png')}}" class="sale-funnel-img">
				</div>
			</div>
		</div>
	</div>
	<!-- end row -->

</div> <!-- container-fluid -->

@endsection


@section('scripts')



@endsection