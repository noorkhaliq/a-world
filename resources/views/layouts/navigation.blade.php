<nav class="sidebar sidebar-offcanvas" id="sidebar">

    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="{{route('dashboard')}}">
                <i class="mdi mdi-grid-large menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="{{route('user.index')}}">
                <i class="mdi mdi-face-agent menu-icon"></i>
                <span class="menu-title">user</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="{{route('pages.index')}}">
                <i class="mdi mdi-projector menu-icon"></i>
                <span class="menu-title">Pages</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{route('slider.index')}}">
                <i class="mdi mdi-chart-line-stacked menu-icon"></i>
                <span class="menu-title">Slider</span>
            </a>
        </li>


        <li class="nav-item">
            <a class="nav-link" href="{{route('services.index')}}">
                <i class="mdi mdi-database-lock menu-icon"></i>
                <span class="menu-title">Services</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{{route('settings.index')}}">
                <i class="mdi mdi-settings menu-icon"></i>
                <span class="menu-title">Settings</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="{{route('contact.index')}}">
                <i class="mdi mdi-contacts menu-icon"></i>
                <span class="menu-title">Contact Us</span>
            </a>
        </li>



    </ul>


    <div class="mt-3 space-y-1 nav-item">
        <!-- Authentication -->
        <form method="POST" action="{{ route('logout') }}">
            @csrf
            <a href="{{route('logout')}}" class="btn " onclick="event.preventDefault(); this.closest('form').submit();">
                <i class="mdi mdi-logout menu-icon"></i>
                {{ __('Log Out') }}
            </a>
        </form>
    </div>

</nav>
