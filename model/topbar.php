<div class="container">
        <div id='fixattop' class="navbar-custom  topnav-navbar topnav-navbar-dark">
            <div class="container-fluid">

                <!-- LOGO -->
                <a href="Home" class="topnav-logo">
                    <span class="text-white">
                        <!-- <img src="assets/images/logo-light.png" alt="" height="16"> -->
                        Company Name
                    </span>
                    
                </a>

                <ul class="list-unstyled topbar-menu float-end mb-0">

                    <li class="dropdown notification-list d-xl-none">
                        <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                            <i class="noti-icon fa-solid fa-magnifying-glass"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
                            <form class="p-3">
                                <input type="text" class="custom-form-control" placeholder="Search ..." aria-label="Recipient's username">
                            </form>
                        </div>
                    </li>

                    <?php if(isset($_SESSION['musicusername'])){ ?>
                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" id="topbar-userdrop" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    
                            <span>
                                <span class="account-user-name">John Doe</span>
                                <span class="account-position">music@gmail.com</span>
                            </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown" aria-labelledby="topbar-userdrop">
        
                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="mdi mdi-account-circle me-1"></i>
                                <span>My Account</span>
                            </a>
                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="mdi mdi-logout me-1"></i>
                                <span>Logout</span>
                            </a>
    
                        </div>
                    </li>
                        <?php } else { ?>
                            <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle nav-user arrow-none me-0"   href="Profile" >
                            <span>
                                <span class="account-user-name">Login</span>
                            </span>
                            </a>
                        </li>
                    <?php } ?>
                </ul>
            
            <?php require 'model/search.php' ?>
                <div class="app-search mx-3">
                    <nav class="navbar navbar-dark navbar-expand-lg topnav-menu">
                        <div class="navbar-collapse active collapse" id="topnav-menu-content">
                            <ul class="navbar-nav">
                                <li class="nav-item ">
                                    <span class="nav-link dropdown-toggle arrow-none" id="topnav-dashboards">
                                       Find By :
                                    </span>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-dashboards">
                                       Artists 
                                    </a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-dashboards">
                                       Genres 
                                    </a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-dashboards">
                                       Release Date 
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                
            </div>
        </div>
    </div>