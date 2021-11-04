@extends('user.gigi.layout.outside-layout')


@section('custom-css')
@endsection
@section('content')
    <div class="container-fluid">


        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                    <h4 class="mb-sm-0 font-size-18">GIGI</h4>

                    <div class="page-title-right">
{{--                        <a href="{{route('custom-sales-funnels')}}" class="btn btn-success">Custom Funnel</a>--}}
                    </div>

                </div>
            </div>
        </div>

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
                        <div class="carousel-wrap">
                            <div class="owl-carousel owl-theme">
                                <div class="item">
                                    <a href="{{asset('assets/images/sales_funnels/Screenshot_141.png')}}">
                                        <img src="{{asset('assets/images/sales_funnels/Screenshot_141.png')}}" class="sale-funnel-img">

                                    </a>
                                </div>
                                <div class="item">
                                    <a href="{{asset('assets/images/sales_funnels/Screenshot_142.png')}}">
                                        <img src="{{asset('assets/images/sales_funnels/Screenshot_142.png')}}" class="sale-funnel-img">

                                    </a>
                                </div>
                                <div class="item">
                                    <a href="{{asset('assets/images/sales_funnels/Screenshot_143.png')}}">
                                        <img src="{{asset('assets/images/sales_funnels/Screenshot_143.png')}}" class="sale-funnel-img">
                                    </a>
                                </div>
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
                        <div class="owl-carousel owl-theme">
                            <div>
                                <a href="{{asset('assets/images/sales_funnels/Screenshot_142.png')}}">
                                    <img src="{{asset('assets/images/sales_funnels/Screenshot_142.png')}}" class="sale-funnel-img">
                                </a>

                            </div>
                            <div>
                                <a href="{{asset('assets/images/sales_funnels/Screenshot_143.png')}}">

                                    <img src="{{asset('assets/images/sales_funnels/Screenshot_143.png')}}" class="sale-funnel-img">
                                </a>
                            </div>
                            <div>
                                <a href="{{asset('assets/images/sales_funnels/Screenshot_141.png')}}">
                                    <img src="{{asset('assets/images/sales_funnels/Screenshot_141.png')}}" class="sale-funnel-img">
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
                        <div class="owl-carousel owl-theme">
                            <div>
                                <a href="{{asset('assets/images/sales_funnels/Screenshot_143.png')}}">
                                    <img src="{{asset('assets/images/sales_funnels/Screenshot_143.png')}}" class="sale-funnel-img">
                                </a>

                            </div>
                            <div>
                                <a href="{{asset('assets/images/sales_funnels/Screenshot_142.png')}}">
                                    <img src="{{asset('assets/images/sales_funnels/Screenshot_142.png')}}" class="sale-funnel-img">
                                </a>
                            </div>
                            <div>
                                <a href="{{asset('assets/images/sales_funnels/Screenshot_141.png')}}">
                                    <img src="{{asset('assets/images/sales_funnels/Screenshot_141.png')}}" class="sale-funnel-img">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- end row -->

    </div> <!-- container-fluid -->

@endsection

@section('scripts')

@endsection
