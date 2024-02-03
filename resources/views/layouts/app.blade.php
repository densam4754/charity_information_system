<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}"> <!-- Setting the language based on the application's locale -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!-- Setting viewport for responsiveness -->

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}"> <!-- CSRF token for form submissions -->

    <title>CHARITY INFORMATION SYSTEM</title> <!-- Title of the webpage -->

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net"> <!-- Prefetching font resources -->
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet"> <!-- Linking to a font stylesheet -->

    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js']) <!-- Including CSS and JavaScript files using Vite -->

</head>
<body>
    <div id="app">
        <!-- Navbar section -->
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">CHARITY INFORMATION SYSTEM</a> <!-- Navbar brand/link -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span> <!-- Navbar toggler icon for mobile -->
                </button>

                <!-- Navbar collapsible content -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left side of the navbar -->
                    <ul class="navbar-nav me-auto">
                        <!-- No items in the left side -->
                    </ul>

                    <!-- Right side of the navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <!-- Displaying user's name -->
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
                                    <!-- Logout form -->
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf <!-- CSRF token for logout form -->
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Main content area -->
        <main class="py-4">
            @yield('content') <!-- Yielding content section -->
        </main>
    </div>
</body>
</html>
