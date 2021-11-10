@extends('user.gigi.layout.outside-layout')


@section('custom-css')
@endsection
@section('content')
    <div class="container-fluid">

        <div class="owl-carousel owl-theme">
            @foreach(\Illuminate\Support\Facades\File::glob(public_path('assets/images/sales_funnels').'/*') as $path)
                <img src="{{ str_replace(public_path(), '', $path) }}" style="width: 100%!important;">
            @endforeach
{{--                <img src="{{$src??''}}" style="width: 100%!important;">--}}
{{--                <img src="{{$src??''}}" style="width: 100%!important;">--}}
{{--                <img src="{{$src??''}}" >--}}
        </div>
        <!-- end row -->

    </div> <!-- container-fluid -->

@endsection

@section('scripts')

@endsection
