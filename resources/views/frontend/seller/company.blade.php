<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>Boulangerie | Modele</title>
    <link
        href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300i,400,400i,500,500i,600,600i,700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/plugins/bootstrap4/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/plugins/owl-carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/plugins/slick/slick/slick.css">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/plugins/lightGallery-master/dist/css/lightgallery.min.css">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/plugins/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/plugins/select2/dist/css/select2.min.css">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/plugins/chikery-icon/style.css">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/css/style.css">
    <link rel="stylesheet" href="{{ asset('/assets/customer/')}}/css/custom.css">
</head>

<body>
@if(isset($header_data) && !empty($header_data))
    @foreach($header_data as $header_key => $header_value)
        <header class="header header--1" data-sticky="true">
            <div class="header__left"><a class="{{$header_value->left_toggler_icon}} ps-modal-link" href="#menu-fullscreen"><span></span></a>
                <p><i class="{{$header_value->left_clock_icon}}"></i> 08:00 am - 08:30 pm</p>
            </div>
            <div class="header__center"><a class="ps-logo" href="index.html"><img src="{{ asset('/public/images/')}}/{{$header_value->user_id}}/company_logo/{{$header_value->theme_id}}/{{$header_value->company_logo}}" alt=""></a></div>
            <div class="header__right">
                <div class="header__actions"><a class="ps-search-btn" href="#"><i class="{{$header_value->right_search_icon}}"></i></a><a href=""><i
                            class="{{$header_value->right_heart_icon}}"></i></a>
                    <div class="ps-cart--mini"><a class="ps-cart__toggle" href="#"><i
                                class="{{$header_value->right_cart_icon}}"></i><span><i>2</i></span></a>
                        <div class="ps-cart__content">
                            <div class="ps-cart__items">
                                <div class="ps-product--mini-cart">
                                    <div class="ps-product__thumbnail"><a href="#"><img src="{{ asset('/assets/customer/')}}/img/product/12.png" alt=""></a></div>
                                    <div class="ps-product__content"><span class="ps-btn--close"></span><a class="ps-product__title"
                                                                                                           href="product-default.html">Jean Woman Summer</a>
                                        <p><strong>Quantité: 1</strong></p><small>€12.00</small>
                                    </div>
                                </div>
                                <div class="ps-product--mini-cart">
                                    <div class="ps-product__thumbnail"><a href="#"><img src="{{ asset('/assets/customer/')}}/img/product/13.png" alt=""></a></div>
                                    <div class="ps-product__content"><span class="{{$header_value->cart_close_icon}}"></span><a class="ps-product__title"
                                                                                                           href="product-default.html">Jean Woman Summer</a>
                                        <p><strong>{{$header_value->cart_quantity_title}}: 1</strong></p><small>€12.00</small>
                                    </div>
                                </div>
                            </div>
                            <div class="ps-cart__footer">
                                <h3>{{$header_value->cart_sub_total_title}}:<strong>€48.00</strong></h3>
                                <figure><a class="ps-btn" href="shopping-cart.html">{{$header_value->view_cart_title}}</a><a class="ps-btn ps-btn--dark"
                                                                                                    href="checkout.html">{{$header_value->checkout_title}}</a></figure>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    @endforeach
@else
    <header class="header header--1" data-sticky="true">
        <div class="header__left"><a class="menu-toggle ps-modal-link" href="#menu-fullscreen"><span></span></a>
            <p><i class="fa fa-clock-o"></i> 08:00 am - 08:30 pm</p>
        </div>
        <div class="header__center"><a class="ps-logo" href="index.html"><img src="{{ asset('/assets/customer/')}}/img/logo.png" alt=""></a></div>
        <div class="header__right">
            <div class="header__actions"><a class="ps-search-btn" href="#"><i class="fa fa-search"></i></a><a href=""><i
                        class="fa fa-heart-o"></i></a>
                <div class="ps-cart--mini"><a class="ps-cart__toggle" href="#"><i
                            class="fa fa-shopping-basket"></i><span><i>2</i></span></a>
                    <div class="ps-cart__content">
                        <div class="ps-cart__items">
                            <div class="ps-product--mini-cart">
                                <div class="ps-product__thumbnail"><a href="#"><img src="{{ asset('/assets/customer/')}}/img/product/12.png" alt=""></a></div>
                                <div class="ps-product__content"><span class="ps-btn--close"></span><a class="ps-product__title"
                                                                                                       href="product-default.html">Jean Woman Summer</a>
                                    <p><strong>Quantité: 1</strong></p><small>€12.00</small>
                                </div>
                            </div>
                            <div class="ps-product--mini-cart">
                                <div class="ps-product__thumbnail"><a href="#"><img src="{{ asset('/assets/customer/')}}/img/product/13.png" alt=""></a></div>
                                <div class="ps-product__content"><span class="ps-btn--close"></span><a class="ps-product__title"
                                                                                                       href="product-default.html">Jean Woman Summer</a>
                                    <p><strong>Quantité: 1</strong></p><small>€12.00</small>
                                </div>
                            </div>
                        </div>
                        <div class="ps-cart__footer">
                            <h3>Sub Total:<strong>€48.00</strong></h3>
                            <figure><a class="ps-btn" href="shopping-cart.html">View Cart</a><a class="ps-btn ps-btn--dark"
                                                                                                href="checkout.html">Checkout</a></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
@endif

<div class="ps-modal" id="menu-fullscreen">
    <div class="header--fullscreen ps-modal__container bg--cover" data-background="{{ asset('/assets/customer/')}}/img/bg/menu-bg.jpg"><a
            class="ps-modal__close ps-btn--close" href="#"></a>
        <div class="header__top"><a class="ps-logo" href="#"><img src="{{ asset('/assets/customer/')}}/img/logo.png" alt=""></a></div>
        <div class="header__content">
            <ul class="menu--fullscreen">
                <li class="current-menu-item "><a href="index.html">Accueil</a>
                </li>
                <li><a href="about-us.html">A Propos</a>
                </li>
                <li><a href="shop-default.html">Boutiques</a>
                </li>
                <li><a href="blog-grid.html">News</a>
                </li>
                <li><a href="contact-us.html">Contact</a>
                </li>
            </ul>
        </div>
        <div class="header__bottom">
            <ul class="ps-list--social">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
            </ul>
            <p>© 2019 AE. Made by<a href="index.html"> El'</a></p>
        </div>
    </div>
</div>
<header class="header header--mobile" data-sticky="false">
    <div class="header__content">
        <div class="header__left"><a class="ps-toggle--sidebar" href="#navigation-mobile"><i class="fa fa-bars"></i></a>
        </div>
        <div class="header__center"><a class="ps-logo" href="#"><img src="{{ asset('/assets/customer/')}}/img/logo.png" alt=""></a></div>
        <div class="header__right">
            <div class="header__actions"><a href=""><i class="fa fa-heart-o"></i></a></div>
        </div>
    </div>
</header>

<div class="ps-panel--sidebar" id="cart-mobile">
    <div class="ps-panel__header">
        <h3>Shopping Cart</h3>
    </div>
    <div class="navigation__content">
        <div class="ps-cart--mobile">
            <div class="ps-cart__content">
                <div class="ps-cart__items">
                    <div class="ps-product--mini-cart">
                        <div class="ps-product__thumbnail"><a href="#"><img src="{{ asset('/assets/customer/')}}/img/product/12.png" alt=""></a></div>
                        <div class="ps-product__content"><span class="ps-btn--close"></span><a class="ps-product__title"
                                                                                               href="product-default.html">Jean Woman Summer</a>
                            <p><strong>Quantité: 1</strong></p><small>€12.00</small>
                        </div>
                    </div>
                    <div class="ps-product--mini-cart">
                        <div class="ps-product__thumbnail"><a href="#"><img src="{{ asset('/assets/customer/')}}/img/product/13.png" alt=""></a></div>
                        <div class="ps-product__content"><span class="ps-btn--close"></span><a class="ps-product__title"
                                                                                               href="product-default.html">Jean Woman Summer</a>
                            <p><strong>Quantité: 1</strong></p><small>€12.00</small>
                        </div>
                    </div>
                </div>
                <div class="ps-cart__footer">
                    <h3>Sub Total:<strong>€48.00</strong></h3>
                    <figure><a class="ps-btn" href="shopping-cart.html">View Cart</a><a class="ps-btn ps-btn--dark"
                                                                                        href="checkout.html">Checkout</a></figure>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="ps-panel--sidebar" id="navigation-mobile">
    <div class="ps-panel__header">
        <h3>Menu</h3>
    </div>
    <div class="ps-panel__content">
        <ul class="menu--mobile">
            <li class="current-menu-item menu-item-has-children"><a href="index.html">Accueil</a><span
                    class="sub-toggle"></span>
                <!-- <ul class="sub-menu"> -->
                <!-- <li><a href="index.html">Homepage 1</a> -->
                <!-- </li> -->
                <!-- <li><a href="homepage-2.html">Homepage 2</a> -->
                <!-- </li> -->
                <!-- <li><a href="homepage-3.html">Homepage 3</a> -->
                <!-- </li> -->
                <!-- <li><a href="homepage-4.html">Homepage 4</a> -->
                <!-- </li> -->
                <!-- <li><a href="homepage-5.html">Homepage 5</a> -->
                <!-- </li> -->
                <!-- <li><a href="homepage-6.html">Homepage 6</a> -->
                <!-- </li> -->
                <!-- </ul> -->
            </li>
            <li class="menu-item-has-children"><a href="shop-default.html">Boutique</a><span class="sub-toggle"></span>
                <!-- <ul class="sub-menu"> -->
                <!-- <li><a href="shop-default.html">Shop Default</a> -->
                <!-- </li> -->
                <!-- <li><a href="shop-fullwidth.html">Shop Fullwidth</a> -->
                <!-- </li> -->
                <!-- <li><a href="shop-fullwidth-no-sidebar.html">Shop Fullwidth No Sidebar</a> -->
                <!-- </li> -->
                <!-- <li><a href="shop-no-sidebar.html">Shop No Sidebar</a> -->
                <!-- </li> -->
                <!-- <li><a href="shop-sidebar-right.html">Shop Sidebar Right</a> -->
                <!-- </li> -->
                <!-- <li><a href="shop-horizontal.html">Shop Horizontal</a> -->
                <!-- </li> -->
                <!-- <li class="menu-item-has-children"><a href="product-default.html">Product</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span> -->
                <!-- <ul class="sub-menu"> -->
                <!-- <li><a href="product-default.html">Product Default</a> -->
                <!-- </li> -->
                <!-- <li><a href="product-background.html">Product Background</a> -->
                <!-- </li> -->
                <!-- <li><a href="product-background-center.html">Product Background Center</a> -->
                <!-- </li> -->
                <!-- <li><a href="product-background-center-2.html">Product Background Center 2</a> -->
                <!-- </li> -->
                <!-- <li><a href="product-sticky.html">Product Sticky</a> -->
                <!-- </li> -->
                <!-- <li><a href="product-thumbnail-left.html">Product Thumbnail Left</a> -->
                <!-- </li> -->
                <!-- </ul> -->
                <!-- </li> -->
                <!-- </ul> -->
            </li>
            <li><a href="about-us.html">A propos</a>
            </li>
            <li class="current-menu-item menu-item-has-children"><a href="about-us.html">Pages</a><span
                    class="sub-toggle"></span>
                <!-- <ul class="sub-menu"> -->
                <!-- <li><a href="about-us.html">About</a> -->
                <!-- </li> -->
                <!-- <li><a href="homepage-2.html">Checkout</a> -->
                <!-- </li> -->
                <!-- <li><a href="whishlist.html">Whishlist</a> -->
                <!-- </li> -->
                <!-- <li><a href="homepage-4.html">Compare</a> -->
                <!-- </li> -->
                <!-- </ul> -->
            </li>
            <li class="menu-item-has-children"><a href="blog-grid.html">News</a><span class="sub-toggle"></span>
                <!-- <ul class="sub-menu"> -->
                <!-- <li><a href="blog-grid.html">Blog grid</a> -->
                <!-- </li> -->
                <!-- <li><a href="blog-grid-full-width.html">Blog grid fullwidth</a> -->
                <!-- </li> -->
                <!-- <li><a href="blog-list.html">Blog List</a> -->
                <!-- </li> -->
                <!-- <li><a href="blog-detail.html">Blog Detail</a> -->
                <!-- </li> -->
                <!-- </ul> -->
            </li>
            <li><a href="contact-us.html">Contact</a>
            </li>
        </ul>
    </div>
</div>
<div class="navigation--list">
    <div class="navigation__content"><a class="navigation__item active" href="index.html"><i
                class="fa fa-home"></i></a><a class="navigation__item ps-toggle--sidebar" href="#navigation-mobile"><i
                class="fa fa-bars"></i></a>
        <a class="navigation__item ps-toggle--sidebar" href="#search-sidebar"><i
                class="fa fa-search"></i></a>
        <a class="navigation__item ps-toggle--sidebar" href="#cart-mobile"><i
                class="fa fa-shopping-basket"></i></a>
    </div>
</div>
<!--include search-sidebar-->
<div id="homepage-1">
    @if(isset($banner_data) && !empty($banner_data))
        @foreach($banner_data as $banner_key => $banner_value)
            <div class="ps-home-banner">
                <div class="ps-carousel--dots owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000"
                     data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1"
                     data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="off"
                     data-owl-animate-in="fadeIn" data-owl-animate-out="fadeOut">
                    <div class="ps-banner ps-banner--1 bg--cover" data-background="{{ asset('/public/images/')}}/{{$banner_value->user_id}}/banner_image/{{$banner_value->theme_id}}/{{$banner_value->image}}">
                        <div class="ps-banner__content">
                            <h3>{{$banner_value->title}}</h3>
                            <p>{{$banner_value->sub_title}}</p><a class="ps-btn" href="#"> Réservation 1</a>
                        </div>
                    </div>
                    <div class="ps-banner ps-banner--1 bg--cover" data-background="{{ asset('/public/images/')}}/{{$banner_value->user_id}}/banner_image/{{$banner_value->theme_id}}/{{$banner_value->image_2}}">
                        <div class="ps-banner__content">
                            <h3>{{$banner_value->title}}</h3>
                            <p>{{$banner_value->sub_title}}</p><a class="ps-btn" href="#"> Réservation 2</a>
                        </div>
                    </div>
                    <div class="ps-banner ps-banner--1 bg--cover" data-background="{{ asset('/public/images/')}}/{{$banner_value->user_id}}/banner_image/{{$banner_value->theme_id}}/{{$banner_value->image_3}}">
                        <div class="ps-banner__content">
                            <h3>{{$banner_value->title}}</h3>
                            <p>{{$banner_value->sub_title}}</p><a class="ps-btn" href="#"> Réservation 3</a>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    @else
        <div class="ps-home-banner">
            <div class="ps-carousel--dots owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000"
                 data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1"
                 data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="off"
                 data-owl-animate-in="fadeIn" data-owl-animate-out="fadeOut">
                <div class="ps-banner ps-banner--1 bg--cover" data-background="{{ asset('/assets/customer/')}}/img/banner/home-1/1.jpg">
                    <div class="ps-banner__content">
                        <h3>Super Delicieux Gâteau</h3>
                        <p>100% Naturel, FRAIS baked goods</p><a class="ps-btn" href="#"> Réservation</a>
                    </div>
                </div>
                <div class="ps-banner ps-banner--1 bg--cover" data-background="{{ asset('/assets/customer/')}}/img/banner/home-1/2.jpg">
                    <div class="ps-banner__content">
                        <h3>Super Delicieux Gâteau</h3>
                        <p>100% Naturel, FRAIS baked goods</p><a class="ps-btn" href="#"> Réservation</a>
                    </div>
                </div>
                <div class="ps-banner ps-banner--1 bg--cover" data-background="{{ asset('/assets/customer/')}}/img/banner/home-1/3.jpg">
                    <div class="ps-banner__content">
                        <h3>Super Delicieux Gâteau</h3>
                        <p>100% Naturel, FRAIS baked goods</p><a class="ps-btn" href="#"> Réservation</a>
                    </div>
                </div>
            </div>
        </div>
    @endif

    @if(isset($home_page_data) && !empty($home_page_data))
        @foreach($home_page_data as $home_page_key => $home_page_value)
                <div class="ps-section ps-home-about bg--cover" data-background="{{ asset('/public/images/')}}/{{$home_page_value->user_id}}/homepage_image_title/{{$home_page_value->theme_id}}/{{$home_page_value->image_1}}">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                                <div class="ps-section__image"><img src="{{ asset('/public/images/')}}/{{$home_page_value->user_id}}/homepage_image_title/{{$home_page_value->theme_id}}/{{$home_page_value->image_1}}" alt=""></div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                                <div class="ps-section__header">
                                    <p>{{$home_page_value->sub_title}}</p>
                                    <h3>{{$home_page_value->title}}</h3><i class="chikery-tt3"></i>
                                </div>
                                <div class="ps-section__content">
                                    <p>{{$home_page_value->details}}</p>
                                    <div class="ps-section__image"><img src="{{ asset('/assets/customer/')}}/img/homepage/home-1/signature.png" alt=""></div>
                                    <h5><span>{{$home_page_value->bottom_sub_title_1}}</span> - {{$home_page_value->bottom_sub_title_2}}</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        @else
        <div class="ps-section ps-home-about bg--cover" data-background="{{ asset('/assets/customer/')}}/img/bg/home-about.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                        <div class="ps-section__image"><img src="{{ asset('/assets/customer/')}}/img/homepage/home-1/home-about.png" alt=""></div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                        <div class="ps-section__header">
                            <p>BIENVENUE CHEZ MODELE</p>
                            <h3>NOTRE HISTOIRE</h3><i class="chikery-tt3"></i>
                        </div>
                        <div class="ps-section__content">
                            <p>“ Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis
                                vel, viverra metus. Sed vel nulla non neque dictum imperdiet hendrerit ”</p>
                            <div class="ps-section__image"><img src="{{ asset('/assets/customer/')}}/img/homepage/home-1/signature.png" alt=""></div>
                            <h5><span>Marry Lulie</span> - Ceo Chikery</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif

    @if(isset($service_data) && !empty($service_data))
        @foreach($service_data as $service_key => $service_value)
                <div class="ps-section ps-home-best-services">
                    <div class="ps-section__left bg--cover" data-background="{{ asset('/public/images/')}}/{{$service_value->user_id}}/service/{{$service_value->theme_id}}/{{$service_value->bg_image_1}}"></div>
                    <div class="ps-section__right">
                        <div class="ps-section__container">
                            <div class="ps-section__header">
                                <p>{{$service_value->sub_title}}</p>
                                <h3>{{$service_value->title}}</h3><i class="chikery-tt3"></i>
                            </div>
                            <div class="ps-section__content">
                                <p>{{$service_value->details}}</p>
                                <ul>
                                    <li>{{$service_value->service_list_item_1}}</li>
                                    <li>{{$service_value->service_list_item_2}}</li>
                                    <li>{{$service_value->service_list_item_3}}</li>
                                    <li>{{$service_value->service_list_item_4}}</li>
                                    <li>{{$service_value->service_list_item_5}}</li>
                                </ul>
                            </div>
                        </div>
                        <div class="ps-section__image bg--cover" data-background="{{ asset('/public/images/')}}/{{$service_value->user_id}}/service/{{$service_value->theme_id}}/{{$service_value->bg_image_2}}"></div>
                    </div>
                </div>
            @endforeach
        @else
            <div class="ps-section ps-home-best-services">
                <div class="ps-section__left bg--cover" data-background="{{ asset('/assets/customer/')}}/img/bg/home-1/home-best-services.jpg"></div>
                <div class="ps-section__right">
                    <div class="ps-section__container">
                        <div class="ps-section__header">
                            <p>CHIKERY CAKE</p>
                            <h3>Meilleurs Services</h3><i class="chikery-tt3"></i>
                        </div>
                        <div class="ps-section__content">
                            <p>Consectetur adipiscing elit. Curabitur sed turpis feugiat, sed vel nulla non neque. Nullamlacinia
                                faucibus risus, a euismod lorem tincidunt id. Vestibulum imperdiet nibh vel magna lacinia
                                ultricesimperdiet.</p>
                            <ul>
                                <li>MEUILLEUR QUALITE</li>
                                <li>RAPIDE LIVRAISON</li>
                                <li>EVENEMENTS</li>
                                <li>INGREDIENT SUR COMMANDE</li>
                                <li>RESERVATION EN LIGNE</li>
                            </ul>
                        </div>
                    </div>
                    <div class="ps-section__image bg--cover" data-background="{{ asset('/assets/customer/')}}/img/bg/home-1/home-best-services-2.jpg"></div>
                </div>
            </div>
        @endif
    <div class="ps-section ps-home-menu-of-day">
        <div class="ps-section__left">
            <div class="ps-section__header">
                <p>Special Menu</p>
                <h3>Menu du Jour</h3><i class="chikery-tt3"></i>
            </div>
            <div class="ps-section__content">
                <div class="ps-block--product-menu ps-tab-root">
                    <div class="ps-block__header">
                        <ul class="ps-tab-list">
                            <li class="active"><a href="#tab-menu-1"><i class="chikery-bk1"></i> Pain</a></li>
                            <li><a href="#tab-menu-2"><i class="chikery-bk2"></i> Patisserie</a></li>
                            <li><a href="#tab-menu-3"><i class="chikery-bk3"></i> Chocolat</a></li>
                            <li><a href="#tab-menu-4"><i class="chikery-bk4"></i> Cookies</a></li>
                        </ul>
                    </div>
                    <div class="ps-tabs">
                        <div class="ps-tab active" id="tab-menu-1">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/2.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€12.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/41.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€2.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/9.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€6.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/23.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€12.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/3.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€2.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/9.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€5.00</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ps-tab" id="tab-menu-2">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/1.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€12.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/2.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€2.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/3.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€6.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/4.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€12.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/5.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€2.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/6.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€5.00</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ps-tab" id="tab-menu-3">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/7.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€12.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/8.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€2.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/9.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€6.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/21.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€12.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/11.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€2.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/12.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€5.00</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ps-tab" id="tab-menu-4">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/13.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€12.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/14.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€2.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/15.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€6.00</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/16.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€12.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/17.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€2.00</span></div>
                                        </div>
                                    </div>
                                    <div class="ps-product--horizontal">
                                        <div class="ps-product__thumbnail"><a class="ps-product__overlay"
                                                                              href="product-default.html"></a><img src="{{ asset('/assets/customer/')}}/img/product/18.png" alt="" /></div>
                                        <div class="ps-product__container">
                                            <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Red
                                                    sugar flower</a>
                                                <p>Nam ac elit a ante commodo tristique</p>
                                            </div>
                                            <div class="ps-product__price"><span>€5.00</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ps-section__right bg--cover" data-background="{{ asset('/assets/customer/')}}/img/bg/home-1/home-menu-of-day.jpg"></div>
    </div>
    <div class="ps-section ps-home-product">
        <div class="container-fluid">
            <div class="ps-section__header">
                <p>Breads every day</p>
                <h3>Special Cake</h3><i class="chikery-tt3"></i>
            </div>
            <div class="ps-section__content">
                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6 ">
                        <div class="ps-product">
                            <div class="ps-product__thumbnail"><img src="{{ asset('/assets/customer/')}}/img/product/17.png" alt="" /><a class="ps-product__overlay"
                                                                                                                                         href="product-default.html"></a><span class="ps-badge ps-badge--sale"><i>30%</i></span>
                            </div>
                            <div class="ps-product__content">
                                <div class="ps-product__desc"><a class="ps-product__title" href="product-default.html">Red sugar
                                        flower</a>
                                    <p><span>350g</span><span>30 Min</span><span>120 <sup>o</sup>C</span></p><span
                                        class="ps-product__price sale"><del>$16.00</del> $12.00</span>
                                </div>
                                <div class="ps-product__shopping"><a class="ps-btn ps-product__add-to-cart" href="#">Add to cart</a>
                                    <div class="ps-product__actions"><a href="#"><i class="fa fa-heart-o"></i></a><a href="#"><i
                                                class="fa fa-random"></i></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6 ">
                        <div class="ps-product">
                            <div class="ps-product__thumbnail"><img src="{{ asset('/assets/customer/')}}/img/product/31.png" alt="" /><a class="ps-product__overlay"
                                                                                                                                         href="product-default.html"></a>
                            </div>
                            <div class="ps-product__content">
                                <div class="ps-product__desc"><a class="ps-product__title" href="product-default.html">Red sugar
                                        flower</a>
                                    <p><span>350g</span><span>30 Min</span><span>120 <sup>o</sup>C</span></p><span
                                        class="ps-product__price">$12.00</span>
                                </div>
                                <div class="ps-product__shopping"><a class="ps-btn ps-product__add-to-cart" href="#">Add to cart</a>
                                    <div class="ps-product__actions"><a href="#"><i class="fa fa-heart-o"></i></a><a href="#"><i
                                                class="fa fa-random"></i></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6 ">
                        <div class="ps-product">
                            <div class="ps-product__thumbnail"><img src="{{ asset('/assets/customer/')}}/img/product/13.png" alt="" /><a class="ps-product__overlay"
                                                                                                                                         href="product-default.html"></a><span class="ps-badge ps-badge--new"><i>New</i></span>
                            </div>
                            <div class="ps-product__content">
                                <div class="ps-product__desc"><a class="ps-product__title" href="product-default.html">Red sugar
                                        flower</a>
                                    <p><span>350g</span><span>30 Min</span><span>120 <sup>o</sup>C</span></p><span
                                        class="ps-product__price">$12.00</span>
                                </div>
                                <div class="ps-product__shopping"><a class="ps-btn ps-product__add-to-cart" href="#">Add to cart</a>
                                    <div class="ps-product__actions"><a href="#"><i class="fa fa-heart-o"></i></a><a href="#"><i
                                                class="fa fa-random"></i></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6 ">
                        <div class="ps-product">
                            <div class="ps-product__thumbnail"><img src="{{ asset('/assets/customer/')}}/img/product/33.png" alt="" /><a class="ps-product__overlay"
                                                                                                                                         href="product-default.html"></a>
                            </div>
                            <div class="ps-product__content">
                                <div class="ps-product__desc"><a class="ps-product__title" href="product-default.html">Red sugar
                                        flower</a>
                                    <p><span>350g</span><span>30 Min</span><span>120 <sup>o</sup>C</span></p><span
                                        class="ps-product__price">$12.00</span>
                                </div>
                                <div class="ps-product__shopping"><a class="ps-btn ps-product__add-to-cart" href="#">Add to cart</a>
                                    <div class="ps-product__actions"><a href="#"><i class="fa fa-heart-o"></i></a><a href="#"><i
                                                class="fa fa-random"></i></a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ps-section__footer"><a class="ps-btn ps-btn--outline" href="#"> All products</a></div>
        </div>
    </div>
    <div class="ps-section ps-testimonials bg--cover" data-background="{{ asset('/assets/customer/')}}/img/bg/testimonials.jpg">
        <div class="container">
            <div class="ps-section__header">
                <p>Testimonial</p>
                <h3>What People Say</h3><i class="chikery-tt3"></i>
            </div>
            <div class="ps-section__content">
                <div class="ps-carousel--dots-2 owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000"
                     data-owl-gap="0" data-owl-nav="false" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1"
                     data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000"
                     data-owl-mousedrag="on">
                    <div class="ps-block--testimonial">
                        <div class="ps-block__content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis
                                vel, viverra metus. Sed vel nulla non neque dictum imperdiet. Aliquam egestas hendrerit euismod.</p>
                        </div>
                        <div class="ps-block__footer">
                            <p>Marry Lulie</p>
                        </div>
                    </div>
                    <div class="ps-block--testimonial">
                        <div class="ps-block__content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis
                                vel, viverra metus. Sed vel nulla non neque dictum imperdiet. Aliquam egestas hendrerit euismod.</p>
                        </div>
                        <div class="ps-block__footer">
                            <p>Harold M. Clark</p>
                        </div>
                    </div>
                    <div class="ps-block--testimonial">
                        <div class="ps-block__content">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sed turpis feugiat, mollis felis
                                vel, viverra metus. Sed vel nulla non neque dictum imperdiet. Aliquam egestas hendrerit euismod.</p>
                        </div>
                        <div class="ps-block__footer">
                            <p>Timothy A. Mitchell</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="ps-home-book-table">
        <div class="ps-section__left bg--cover" data-background="{{ asset('/assets/customer/')}}/img/section/book-your-tables/bg.jpg">
            <div class="ps-section__content">
                <p>Video Present</p>
                <h3>Any Design <br /> For Your Feast-day</h3>
                <div class="ps-video"><a href="https://www.youtube.com/watch?v=2_g48Zw0rao"><i class="fa fa-play"></i></a>
                </div>
            </div>
        </div>
        <div class="ps-section__right">
            <form class="ps-form--book-your-table" action="index.html" method="get">
                <div class="ps-form__header">
                    <h4>Modele Cake</h4>
                    <h3>Reserver votre table</h3><i class="chikery-tt3"></i>
                    <p>Faites votre réservation en ligne. Vous allez recevoir la confirmation dans la suite. Pour d'autre
                        demande, veuillez contacter directement <span> (+33) 43445445</span></p>
                </div>
                <div class="ps-form__content">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Nom">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="TéléPhone">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                            <div class="form-group">
                                <input class="form-control" type="email" placeholder="E-mail">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Nombres des personnes">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Date">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ">
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Heures">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ps-form__footer">
                    <button class="ps-btn">Reserver</button>
                </div>
            </form>
        </div>
    </div>

    <!-- float button  -->
    <div>

        <!-- model popup -->


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">

                    <div class='container filter-container'>

                        <div class='button-reg'>
                            <div class='login'>Créer</div>
                            <div class='singin'>Trouver</div>
                        </div>

                        <form name='enter'>
                            <input type='text' name='login' class='login-enter' placeholder='Vos besoins' required></input>
                            <input type='text' name='mail' class='mail-enter' placeholder='Localisation' required></input>
                            <!-- <input type='password' name='password' class='password-enter' placeholder='Enter yor password' required></input> -->
                            <!-- <input type='password' name='rapiat-password' class='second-password' placeholder='Repiat yor password' required></input> -->
                            <input type='submit' name='submit-reg' class='submit-reg' value='Créer'></input>
                            <!-- <input type='checkbox' name='conditions' class='check-conditions' required></input> -->
                            <!-- <a href='#' class='agree'>I have read and agree to </br> the terms of registration</a> -->
                        </form>

                        <input type='submit' name='submit-enter' class='submit-enter' value='Trouver' required></input>
                    </div>


                </div>
            </div>
        </div>
        <!-- end model popup -->

        <a href="#" class="float btn btn-primary" data-toggle="modal" data-target="#exampleModal">
            <!--<i class="fa fa-search my-float"></i>-->
            <i class="fa fa-search my-float" aria-hidden="true"></i>
        </a>
    </div>
</div>
<footer class="ps-footer">
    <div class="ps-footer__content">
        <div class="container">
            <div class="ps-footer__left">
                <form class="ps-form--footer-subscribe" action="index.html" method="get">
                    <h3>Get news & offer</h3>
                    <p>Sign up for our mailing list to get latest update and offers</p>
                    <div class="form-group--inside">
                        <input class="form-control" type="text" placeholder="Your email...">
                        <button><i class="fa fa-arrow-right"></i></button>
                    </div>
                    <p>* Don't worry, we never spam</p>
                </form>
            </div>
            <div class="ps-footer__center">
                <div class="ps-site-info"><a class="ps-logo" href="index.html"><img src="{{ asset('/assets/customer/')}}/img/logo.png" alt=""></a>
                    <p>004 Riley Street, Surry Hills 2050 Sydney, Australia</p>
                    <p>Email:<a href="#"> info@nouthemes.com</a></p>
                    <p>Phone:<span class="ps-hightlight"> +455 45 454555</span></p>
                </div>
            </div>
            <div class="ps-footer__right">
                <aside class="widget widget_footer">
                    <h3 class="widget-title">Opening Time</h3>
                    <p>Monday - Friday: <span>08:00 am - 08:30 pm</span></p>
                    <p>Saturday - Sunday: <span>10:00 am - 16:30 pm</span></p>
                    <ul class="ps-list--payment-method">
                        <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                    </ul>
                </aside>
            </div>
        </div>
    </div>
    <div class="ps-footer__bottom">
        <div class="container">
            <ul class="ps-list--social">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
            </ul>
            <p>© 2019 Chikery. Made by<a href="index.html"> Nouthemes</a></p>
        </div>
    </div>
</footer>
<div class="ps-popup" id="subscribe" data-time="500">
    <div class="ps-popup__content bg--cover" data-background="{{ asset('/assets/customer/')}}/img/bg/subcribe.jpg"><a
            class="ps-popup__close ps-btn--close" href="#"></a>
        <form class="ps-form--subscribe-popup" action="index.html" method="get">
            <div class="ps-form__content">
                <h5>Newletters</h5>
                <h3>Notre promotion <span>30%</span> Off</h3>
                <p>Sign up to our newsletter and save 30% for you next purchase. No spam, we promise !</p>
                <div class="form-group">
                    <input class="form-control" type="text" placeholder="Email Address" required>
                    <button class="ps-btn">S'inscrire</button>
                </div>
                <div class="ps-checkbox ps-checkbox--circle">
                    <input class="form-control" type="checkbox" id="not-show" name="not-show" />
                    <label for="not-show">Ne le plus à la prochaine</label>
                </div>
            </div>
        </form>
    </div>
</div>
<div id="back2top"><i class="pe-7s-angle-up"></i></div>
<div class="ps-site-overlay"></div>
<div id="loader-wrapper">
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>
<div class="ps-search" id="site-search"><a class="ps-btn--close" href="#"></a>
    <div class="ps-search__content">
        <form class="ps-form--primary-search" action="do_action" method="post">
            <input class="form-control" type="text" placeholder="Search for...">
            <button><i class="fa fa-search"></i></button>
        </form>
    </div>
</div>
<!-- Plugins-->
<script src="{{ asset('/assets/customer/')}}/plugins/jquery-1.12.4.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/owl-carousel/owl.carousel.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/bootstrap4/js/bootstrap.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/imagesloaded.pkgd.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/masonry.pkgd.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/isotope.pkgd.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/jquery.matchHeight-min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/slick/slick/slick.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/slick-animation.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/lightGallery-master/dist/js/lightgallery-all.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/sticky-sidebar/dist/sticky-sidebar.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/jquery.slimscroll.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/select2/dist/js/select2.full.min.js"></script>
<script src="{{ asset('/assets/customer/')}}/plugins/gmap3.min.js"></script>
<!-- Custom scripts-->
<script src="{{ asset('/assets/customer/')}}/js/main.js"></script>
<script
    src="{{ asset('/assets/customer/')}}/https://maps.googleapis.com/maps/api/js?key=AIzaSyDxflHHc5FlDVI-J71pO7hM1QJNW1dRp4U&amp;region=GB"></script>
</body>

</html>
