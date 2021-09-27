<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Auth;
use App\Models\HeaderLayoutBuilder;
use App\Models\Theme;
use App\Models\BannerLayoutBuilder;
use App\Models\HomePagelayoutBuilder;
use App\Models\ServiceLayoutBuilder;
use Illuminate\Support\Facades\Redirect;

class LayoutBuilderController extends Controller
{
//    Frontend

    public function renderHomepageData(){
        $company_id = Auth::user()->id;
        $header_data = HeaderLayoutBuilder::where([['user_id',$company_id],['theme_id',1]])->get();
        $banner_data = BannerLayoutBuilder::where([['user_id',$company_id],['theme_id',1]])->get();
        $home_page_data = HomePagelayoutBuilder::where([['user_id',$company_id],['theme_id',1]])->get();
        $service_data = ServiceLayoutBuilder::where([['user_id',$company_id],['theme_id',1]])->get();
        return view('frontend.seller.company', compact('header_data','banner_data','home_page_data','service_data'));
    }
    public function manageHeader(){
        $user_id = Auth::user()->id;
        $themes = Theme::where('user_id',$user_id)->get();
        $header_layout_details = HeaderLayoutBuilder::where('user_id',$user_id)->orderBy('header_row_id','desc')->first();
        return view('backend.website_settings.manage_header', compact('header_layout_details','themes'));
    }
    public function postHeaderLayout(Request $request){
        $user_id = Auth::user()->id;
        if ($request->header_id){
            $header_layout = HeaderLayoutBuilder::findOrFail($request->header_id);
        }else{
            $header_layout = new HeaderLayoutBuilder();
        }
        $theme_id = $request->theme_id;
        $header_layout->theme_id = $request->theme_id;
        $header_layout->user_id = $user_id;
        $header_layout->left_toggler_icon = $request->left_toggler_icon;
        $header_layout->left_clock_icon = $request->left_clock_icon;
        if ($request->company_logo) {
            if ($files = $request->file('company_logo')) {
                $destinationPath = 'public/images/'.$user_id.'/company_logo/'.$theme_id.'/'; // upload path
                $logo_name = date('YmdHis') . "." . $files->getClientOriginalName();
                $files->move($destinationPath, $logo_name);
            }
            $header_layout->company_logo = $logo_name;
        }
        $header_layout->right_search_icon = $request->search_icon;
        $header_layout->right_heart_icon = $request->heart_icon;
        $header_layout->right_cart_icon	 = $request->cart_icon;
        $header_layout->cart_close_icon	 = $request->close_icon;
        $header_layout->cart_quantity_title	 = $request->quantity_title;
        $header_layout->cart_sub_total_title	 = $request->sub_total_title;
        $header_layout->view_cart_title	 = $request->cart_button_title;
        $header_layout->checkout_title	 = $request->checkout_button_title;
        $header_layout->created_by		 = $user_id;
        $header_layout->save();

//        toast('Successfully Performed','success');
        return Redirect::to('/manage-header');
    }

    public function manageBanner(){
        $user_id = Auth::user()->id;
        $themes = Theme::where('user_id',$user_id)->get();
        $banner_layout_details = BannerLayoutBuilder::where('user_id',$user_id)->orderBy('banner_row_id','desc')->first();
        return view('backend.website_settings.manage_banner', compact('banner_layout_details','themes'));
    }
    public function postBannerLayout(Request $request){
        $user_id = Auth::user()->id;
        if ($request->banner_row_id){
            $banner_layout = BannerLayoutBuilder::findOrFail($request->banner_row_id);
        }else{
            $banner_layout = new BannerLayoutBuilder();
        }
        $theme_id = $request->theme_id;
        $banner_layout->theme_id = $request->theme_id;
        $banner_layout->user_id = $user_id;
        $banner_layout->title = $request->title;
        $banner_layout->sub_title = $request->sub_title;
        $banner_layout->button_title = $request->button_title;
        if ($request->image) {
            if ($files = $request->file('image')) {
                $destinationPath = 'public/images/'.$user_id.'/banner_image/'.$theme_id.'/'; // upload path
                $banner_title = date('YmdHis') . "." . $files->getClientOriginalName();
                $files->move($destinationPath, $banner_title);
            }
            $banner_layout->image = $banner_title;
        }
        if ($request->image_2) {
            if ($files = $request->file('image_2')) {
                $destinationPath = 'public/images/'.$user_id.'/banner_image/'.$theme_id.'/'; // upload path
                $banner_image_2 = date('YmdHis') . "." . $files->getClientOriginalName();
                $files->move($destinationPath, $banner_image_2);
            }
            $banner_layout->image_2 = $banner_image_2;
        }
        if ($request->image_3) {
            if ($files = $request->file('image_3')) {
                $destinationPath = 'public/images/'.$user_id.'/banner_image/'; // upload path
                $banner_image_3 = date('YmdHis') . "." . $files->getClientOriginalName();
                $files->move($destinationPath, $banner_image_3);
            }
            $banner_layout->image_3 = $banner_image_3;
        }

        $banner_layout->created_by = $user_id;
        $banner_layout->save();

//        toast('Successfully Performed','success');
        return Redirect::to('/manage-banner');
    }

    public function manageMainSection(){
        $user_id = Auth::user()->id;
        $themes = Theme::where('user_id',$user_id)->get();
        $home_page_layout_details = HomePagelayoutBuilder::where('user_id',$user_id)->orderBy('home_page_row_id','desc')->first();
        return view('backend.website_settings.main_section', compact('home_page_layout_details','themes'));
    }
    public function postHomePageLayout(Request $request){
//        dd($request->all());
        $user_id = Auth::user()->id;
        if ($request->home_page_row_id){
            $home_page_layout = HomePagelayoutBuilder::findOrFail($request->home_page_row_id);
        }else{
            $home_page_layout = new HomePagelayoutBuilder();
        }
        $theme_id = $request->theme_id;
        $home_page_layout->theme_id = $request->theme_id;
        $home_page_layout->user_id = $user_id;
        $home_page_layout->title = $request->title;
        $home_page_layout->sub_title = $request->sub_title;
        $home_page_layout->details = $request->details;
        $home_page_layout->icon_1 = $request->icon_1;
        $home_page_layout->bottom_icon_sub_title = $request->bottom_icon_sub_title;
        $home_page_layout->bottom_sub_title_1 = $request->bottom_sub_title_1;
        $home_page_layout->bottom_sub_title_2 = $request->bottom_sub_title_2;

        if ($request->image_1) {
            if ($files = $request->file('image_1')) {
                $destinationPath = 'public/images/'.$user_id.'/homepage_image_title/'.$theme_id.'/'; // upload path
                $homepage_image_title_1 = date('YmdHis') . "." . $files->getClientOriginalName();
                $files->move($destinationPath, $homepage_image_title_1);
            }
            $home_page_layout->image_1 = $homepage_image_title_1;
        }

        if ($request->image_2) {
            if ($files = $request->file('image_2')) {
                $destinationPath = 'public/images/'.$user_id.'/homepage_image_title/'.$theme_id.'/'; // upload path
                $homepage_image_title_2 = date('YmdHis') . "." . $files->getClientOriginalName();
                $files->move($destinationPath, $homepage_image_title_2);
            }
            $home_page_layout->image_2 = $homepage_image_title_2;
        }


        $home_page_layout->created_by = $user_id;
        $home_page_layout->save();

//        toast('Successfully Performed','success');
        return Redirect::to('/manage-home-page-main-section');
    }

    public function manageService(){
        $user_id = Auth::user()->id;
        $themes = Theme::where('user_id',$user_id)->get();
        $service_layout_details = ServiceLayoutBuilder::where('user_id',$user_id)->orderBy('sercie_row_id','desc')->first();
        return view('backend.website_settings.service', compact('service_layout_details','themes'));
    }
    public function postService(Request $request){
//        dd($request->all());
        $user_id = Auth::user()->id;
        if ($request->sercie_row_id){
            $service_layout = ServiceLayoutBuilder::findOrFail($request->sercie_row_id);
        }else{
            $service_layout = new ServiceLayoutBuilder();
        }
        $theme_id = $request->theme_id;
        $service_layout->theme_id = $theme_id;
        $service_layout->user_id = $user_id;
        $service_layout->title = $request->title;
        $service_layout->sub_title = $request->sub_title;
        $service_layout->details = $request->details;
        $service_layout->service_list_item_1 = $request->service_list_item_1;
        $service_layout->service_list_item_2 = $request->service_list_item_2;
        $service_layout->service_list_item_3 = $request->service_list_item_3;
        $service_layout->service_list_item_4 = $request->service_list_item_4;
        $service_layout->service_list_item_5 = $request->service_list_item_5;


        if ($request->bg_image_1) {
            if ($files = $request->file('bg_image_1')) {
                $destinationPath = 'public/images/'.$user_id.'/service/'.$theme_id.'/'; // upload path
                $service_bg_image_title_1 = date('YmdHis') . "." . $files->getClientOriginalName();
                $files->move($destinationPath, $service_bg_image_title_1);
            }
            $service_layout->bg_image_1 = $service_bg_image_title_1;
        }

        if ($request->bg_image_2) {
            if ($files = $request->file('bg_image_2')) {
                $destinationPath = 'public/images/'.$user_id.'/service/'.$theme_id.'/'; // upload path
                $service_bg_image_title_2 = date('YmdHis') . "." . $files->getClientOriginalName();
                $files->move($destinationPath, $service_bg_image_title_2);
            }
            $service_layout->bg_image_2 = $service_bg_image_title_2;
        }


        $service_layout->created_by = $user_id;
        $service_layout->save();

//        toast('Successfully Performed','success');
        return Redirect::to('/manage-service');
    }
}
