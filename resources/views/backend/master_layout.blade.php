@include('backend/common/header')
@include('backend/common/slider')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
{{--        <section class="content-header">--}}
{{--            <div class="container-fluid">--}}
{{--                <div class="row mb-2">--}}
{{--                    <h1>Wel come to Food Elvent</h1>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </section>--}}

        <!-- Main content -->
        <section class="content">
            @yield('content')
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@include('backend/common/footer')
