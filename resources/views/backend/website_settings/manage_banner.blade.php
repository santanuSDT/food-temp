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
                            <h3 class="card-title">Banner</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form method="POST" action="{{route('post-banner-layout')}}" enctype="multipart/form-data">
                            @csrf
                            <div class="card-body">
                                <input type="hidden" name="banner_row_id" value="{{isset($banner_layout_details) ? $banner_layout_details->banner_row_id : ''}}">
                                <div class="form-group">
                                    <label>Select Theme</label>
                                    <select class="form-control" name="theme_id">
                                        <option value="0">Select</option>
                                        @if(isset($themes) && !empty($themes))
                                            @foreach($themes as $row)
                                                <option
                                                    @if(isset($banner_layout_details) && ($row->theme_id == $banner_layout_details->theme_id))
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
                                    <label for="exampleInputEmail1">Banner Title</label>
                                    <input type="text" name="title" class="form-control" id="bannerTitle" placeholder="Enter Banner Title" value="{{isset($banner_layout_details) ? $banner_layout_details->title : ''}}">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Banner Sub Title</label>
                                    <input type="text" name="sub_title" value="{{isset($banner_layout_details) ? $banner_layout_details->sub_title : ''}}" class="form-control" id="bannerSubTitle" placeholder="Enter banner sub title">
                                </div>
                                <div class="form-group image_preview">
                                    <label for="exampleInputFile">Banner Image-1</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" name="image" value="{{isset($banner_layout_details) ? $banner_layout_details->image : ''}}" class="custom-file-input" id="exampleInputFile">
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
                                <div class="form-group image_preview">
                                    <label for="exampleInputFile">Banner Image-2</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" name="image_2" onchange="loadFile(event)" value="{{isset($banner_layout_details) ? $banner_layout_details->image_2 : ''}}" class="custom-file-input" id="exampleInputFile">
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
                                        @if(isset($banner_layout_details))
                                            <img src="{{asset('public/images/'.$user_id.'/banner_image/'.$banner_layout_details->theme_id.'/'.$banner_layout_details->bg_image_1)}}" alt="" id="output">
                                        @else
                                            <img id="output" alt="">
                                        @endif
                                    </div>
                                </div>
                                <div class="form-group image_preview">
                                    <label for="exampleInputFile">Banner Image-3</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" name="image_3" value="{{isset($banner_layout_details) ? $banner_layout_details->image_3 : ''}}" class="custom-file-input" id="exampleInputFile">
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
                                        @if(isset($banner_layout_details))
                                            <img src="{{asset('public/images/'.$user_id.'/banner_image/'.$banner_layout_details->theme_id.'/'.$banner_layout_details->image_3)}}" alt="" id="output">
                                        @else
                                            <img id="output" alt="">
                                        @endif
                                    </div>
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
