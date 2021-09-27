<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('frontend.customer.welcome');
});
Route::get('/company',[\App\Http\Controllers\LayoutBuilderController::class,'renderHomepageData']);

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/manage-header',[App\Http\Controllers\LayoutBuilderController::class,'manageHeader'])->name('manage-header');
Route::post('/post-header-layout',[\App\Http\Controllers\LayoutBuilderController::class,'postHeaderLayout'])->name('post-header-layout');

Route::get('/manage-banner',[App\Http\Controllers\LayoutBuilderController::class,'manageBanner'])->name('manage-banner');
Route::post('/post-banner-layout',[\App\Http\Controllers\LayoutBuilderController::class,'postBannerLayout'])->name('post-banner-layout');

Route::get('/manage-home-page-main-section',[App\Http\Controllers\LayoutBuilderController::class,'manageMainSection'])->name('manage-main-section');
Route::post('/post-home-page-main-section-layout',[\App\Http\Controllers\LayoutBuilderController::class,'postHomePageLayout'])->name('post-main-section-layout');

Route::get('/manage-service',[App\Http\Controllers\LayoutBuilderController::class,'manageService'])->name('manage-service');
Route::post('/post-service',[\App\Http\Controllers\LayoutBuilderController::class,'postService'])->name('post-service-layout');
