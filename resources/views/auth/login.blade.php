
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Food Event | Login</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="{{asset('css/app.css')}}">
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="../../index2.html"><b>Food</b> Event</a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body">
            <p class="login-box-msg">Sign in to start your session</p>

            <form action="{{ route('login') }}" method="post">
                @csrf
                <div class="input-group mb-3">
                    <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Email" required autocomplete="email" autofocus>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                    @error('email')
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="input-group mb-3">
                    <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Password" required autocomplete="current-password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                    @error('password')
                    <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
                <div class="row">
                    <div class="col-8">
                        {{--                        <div class="icheck-primary">--}}
                        {{--                            <input type="checkbox" id="remember">--}}
                        {{--                            <label for="remember">--}}
                        {{--                                Remember Me--}}
                        {{--                            </label>--}}
                        {{--                        </div>--}}
                    </div>
                    <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>

        {{--            <div class="social-auth-links text-center mb-3">--}}
        {{--                <p>- OR -</p>--}}
        {{--                <a href="#" class="btn btn-block btn-primary">--}}
        {{--                    <i class="fab fa-facebook mr-2"></i> Sign in using Facebook--}}
        {{--                </a>--}}
        {{--                <a href="#" class="btn btn-block btn-danger">--}}
        {{--                    <i class="fab fa-google-plus mr-2"></i> Sign in using Google+--}}
        {{--                </a>--}}
        {{--            </div>--}}
        <!-- /.social-auth-links -->

            {{--            <p class="mb-1">--}}
            {{--                <a href="forgot-password.html">I forgot my password</a>--}}
            {{--            </p>--}}
            <p class="mb-0">
                <a href="register.html" class="text-center">Register a new membership</a>
            </p>
        </div>
        <!-- /.login-card-body -->
    </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="{{asset('')}}js/app.js"></script>


</body>
</html>
