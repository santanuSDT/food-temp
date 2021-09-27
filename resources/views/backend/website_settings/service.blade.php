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
                            <h3 class="card-title">Home Page | Services</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form method="POST" action="{{route('post-service-layout')}}" enctype="multipart/form-data">
                            @csrf
                            <div class="card-body">
                                <input type="hidden" name="sercie_row_id" value="{{isset($service_layout_details) ? $service_layout_details->sercie_row_id   : ''}}">
                                <div class="form-group">
                                    <label>Select Theme</label>
                                    <select class="form-control" name="theme_id">
                                        <option value="0">Select</option>
                                        @if(isset($themes) && !empty($themes))
                                            @foreach($themes as $row)
                                                <option
                                                    @if(isset($service_layout_details) && ($row->theme_id == $service_layout_details->theme_id))
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
                                    <label for="exampleInputEmail1">Title</label>
                                    <input type="text" name="title" class="form-control" id="HomePageTitle" placeholder="Enter Title" value="{{isset($service_layout_details) ? $service_layout_details->title : ''}}">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Sub Title</label>
                                    <input type="text" name="sub_title" value="{{isset($service_layout_details) ? $service_layout_details->sub_title : ''}}" class="form-control" id="homePageSubTitle" placeholder="Enter sub title">
                                </div>

                                <div class="form-group">
                                    <label>Details</label>
                                    <textarea class="form-control" rows="3" placeholder="Enter details ..." name="details">{{isset($service_layout_details) ? $service_layout_details->details : ''}}</textarea>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">List Item - 1</label>
                                    <input type="text" name="service_list_item_1" value="{{isset($service_layout_details) ? $service_layout_details->service_list_item_1 : ''}}" class="form-control" id="icon" placeholder="Enter item - 1">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">List Item - 2</label>
                                    <input type="text" name="service_list_item_2" value="{{isset($service_layout_details) ? $service_layout_details->service_list_item_2 : ''}}" class="form-control" id="icon" placeholder="Enter item - 2">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">List Item - 3</label>
                                    <input type="text" name="service_list_item_3" value="{{isset($service_layout_details) ? $service_layout_details->service_list_item_3 : ''}}" class="form-control" id="icon" placeholder="Enter item - 3">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">List Item - 4</label>
                                    <input type="text" name="service_list_item_4" value="{{isset($service_layout_details) ? $service_layout_details->service_list_item_4 : ''}}" class="form-control" id="icon" placeholder="Enter item - 4">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">List Item - 5</label>
                                    <input type="text" name="service_list_item_5" value="{{isset($service_layout_details) ? $service_layout_details->service_list_item_5 : ''}}" class="form-control" id="icon" placeholder="Enter item - 5">
                                </div>
                                <div class="form-group image_preview">
                                    <label for="exampleInputFile">Image-1</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" name="bg_image_1" value="{{isset($service_layout_details) ? $service_layout_details->bg_image_1 : ''}}" class="custom-file-input" id="exampleInputFile">
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
                                        @if(isset($service_layout_details))
                                            <img src="{{asset('public/images/'.$user_id.'/service/'.$service_layout_details->theme_id.'/'.$service_layout_details->bg_image_1)}}" alt="" id="output">
                                        @else
                                            <img id="output" alt="">
                                        @endif
                                    </div>
                                </div>
                                <div class="form-group image_preview">
                                    <label for="exampleInputFile">Image-2</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" name="bg_image_2" onchange="loadFile(event)" value="{{isset($service_layout_details) ? $service_layout_details->bg_image_2 : ''}}" class="custom-file-input" id="exampleInputFile" accept="image/*">
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
                                        @if(isset($service_layout_details))
                                            <img src="{{asset('public/images/'.$user_id.'/service/'.$service_layout_details->theme_id.'/'.$service_layout_details->bg_image_2)}}" alt="" id="output">
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
