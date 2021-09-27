@extends('backend.master_layout')
@section('content')
    <style>
        .image_preview{
            height: 250px;
            width: 100%;
            position: relative;
            border-bottom: 2px dotted;
        }
        .image_preview img{
            position: relative;
            left: 50%;
            top: 50%;
            height: 150px;
            width: 200px;
            align-items: center;
            border-style: none;
            margin-top: 15px;
        }
    </style>
    <!-- Main content -->
    <section class="content mt-5">
        <div class="container-fluid">
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Header</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form method="POST" action="{{route('post-header-layout')}}" enctype="multipart/form-data">
                            @csrf
                            <div class="card-body">
                                <input type="hidden" name="header_id" value="{{isset($header_layout_details) ? $header_layout_details->header_row_id : ''}}">
                                <div class="form-group">
                                    <label>Select Theme</label>
                                    <select class="form-control" name="theme_id">
                                        <option value="0">Select</option>
                                        @if(isset($themes) && !empty($themes))
                                            @foreach($themes as $row)
                                                <option
                                                    @if(isset($header_layout_details) && ($row->theme_id == $header_layout_details->theme_id))
                                                    selected='selected'
                                                    @endif value="{{ $row->theme_id }}">
                                                    {{ $row->theme_name}}
                                                </option>
                                            @endforeach
                                        @endif
                                        <option value="1">Theme-1</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Left Toggler Icon</label>
                                    <input type="text" name="left_toggler_icon" class="form-control" id="leftToggler" placeholder="Enter icon name" value="{{isset($header_layout_details) ? $header_layout_details->left_toggler_icon : ''}}">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Left Clock Icon</label>
                                    <input type="text" name="left_clock_icon" value="{{isset($header_layout_details) ? $header_layout_details->left_clock_icon : ''}}" class="form-control" id="leftCLockIcon" placeholder="Enter icon name">
                                </div>
                                <div class="form-group image_preview">
                                    <label for="exampleInputFile">Company Logo</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" name="company_logo" onchange="loadFile(event)" value="{{isset($header_layout_details) ? $header_layout_details->company_logo : ''}}" class="custom-file-input" id="exampleInputFile">
                                            <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                        </div>
                                        <div class="input-group-append">
                                            <span class="input-group-text">Upload</span>
                                        </div>
                                    </div>
                                    <div>
                                        @php
                                            $user_id = Auth::user()->id;
                                        @endphp
                                        @if(isset($header_layout_details))
                                            <img src="{{asset('public/images/'.$user_id.'/company_logo/'.$header_layout_details->theme_id.'/'.$header_layout_details->company_logo)}}" alt="" id="output">
                                        @else
                                            <img id="output" alt="">
                                        @endif
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Search Icon</label>
                                    <input type="text" name="search_icon" value="{{isset($header_layout_details) ? $header_layout_details->right_search_icon : ''}}" class="form-control" id="searchIcon" placeholder="Enter Icon Name">
                                </div>
                                <div class="form-group">
                                    <label for="HeartIcon">Heart Icon</label>
                                    <input type="text" name="heart_icon" value="{{isset($header_layout_details) ? $header_layout_details->right_heart_icon : ''}}" class="form-control" id="heart_icon" placeholder="Enter Icon Name">
                                </div>
                                <div class="form-group">
                                    <label for="CartIcon">Cart Icon</label>
                                    <input type="text" name="cart_icon" value="{{isset($header_layout_details) ? $header_layout_details->right_cart_icon : ''}}" class="form-control" id="cartIcon" placeholder="Enter Icon Name">
                                </div>
                                <div class="form-group">
                                    <label for="CartIcon">Close Icon</label>
                                    <input type="text" name="close_icon" value="{{isset($header_layout_details) ? $header_layout_details->cart_close_icon : ''}}" class="form-control" id="closeIcon" placeholder="Enter Icon Name">
                                </div>
                                <div class="form-group">
                                    <label for="CartIcon">Quantity Title</label>
                                    <input type="text" name="quantity_title" value="{{isset($header_layout_details) ? $header_layout_details->cart_quantity_title : ''}}" class="form-control" id="quantityTitle" placeholder="Enter Quantity Title">
                                </div>
                                <div class="form-group">
                                    <label for="CartIcon">Sub Total Title</label>
                                    <input type="text" name="sub_total_title" value="{{isset($header_layout_details) ? $header_layout_details->cart_sub_total_title : ''}}" class="form-control" id="subTotalTitle" placeholder="Enter Sub Total Title">
                                </div>
                                <div class="form-group">
                                    <label for="CartIcon">Cart Button Title</label>
                                    <input type="text" name="cart_button_title" value="{{isset($header_layout_details) ? $header_layout_details->view_cart_title : ''}}" class="form-control" id="cartButtonTitle" placeholder="Enter Cart Button Title">
                                </div>
                                <div class="form-group">
                                    <label for="CartIcon">Checkout Button Title</label>
                                    <input type="text" name="checkout_button_title" value="{{isset($header_layout_details) ? $header_layout_details->checkout_title : ''}}" class="form-control" id="checkoutButtonTitle" placeholder="Enter Checkout Button Title">
                                </div>
                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.card -->
                </div>
                <!--/.col (left) -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <script>
        var loadFile = function(event) {
            var output = document.getElementById('output');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function() {
                URL.revokeObjectURL(output.src) // free memory
            }
        };
    </script>
    <!-- /.content -->
@endsection
