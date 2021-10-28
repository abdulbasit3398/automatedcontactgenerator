<!doctype html>
<html lang="en">

    @include('user.include.head')

    <body>
        <div class="home-btn d-none d-sm-block">
            <a href="{{route('dashboard')}}" class="text-dark"><i class="fas fa-home h2"></i></a>
        </div>

        <section class="my-5 pt-sm-5">
            <div class="container">
                @section('container')
                    @show
            </div>
        </section>

        
        <!-- JAVASCRIPT -->
        @include('user.include.scripts')

    </body>
</html>
