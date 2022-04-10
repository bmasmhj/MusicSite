      
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music</title>
    <link rel="stylesheet" href="./assets/css/app-dark.min.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./assets/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body >
    <div class="container">
        <div id='fixattop' class="navbar-custom  topnav-navbar topnav-navbar-dark">
            <div class="container-fluid">

                <!-- LOGO -->
                <a href="index.html" class="topnav-logo">
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

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" id="topbar-userdrop" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            <span class="account-user-avatar"> 
                                <img src="./assets/image/user_image.png" alt="" class="rounded-circle">
                            </span>
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

                </ul>
              

           
                <div class="app-search dropdown">
                    <form>
                        <div class="d-flex">
                            <input type="text" class="custom-form-control" placeholder="Search..." id="top-search">                            
                            <button class="input-text" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                        </div>
                    </form>
                    <div class="dropdown-menu dropdown-menu-animated dropdown-lg" id="search-dropdown">
                        <!-- item-->
                        <div class="dropdown-header noti-title">
                            <h5 class="text-overflow mb-2">Found <span class="text-danger">17</span> results</h5>
                        </div>
    
    
                    
                        <div class="notification-list">
                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <div class="d-flex">
                                    <img class="d-flex me-2 rounded-circle" src="assets/image/music_demo.jpg" alt="Generic placeholder image" width="32" height="32">
                                    <div class="w-100">
                                        <h5 class="m-0 font-14">Music Name</h5>
                                        <span class="font-12 mb-0">Author</span>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div> 
                </div>
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
    <div class="container mt-3">
        <div class="custom-card p-3">
            <div class="row">
                <div class="col-md-9 border-right">

                </div>
                <div class="col-md-3 p-2">
                    <div>
                        <h3>Genres</h3>
                        <div class="genre-list" id="genrelists">
                         
                        </div>
                    </div>
                    <div class="mt-5">
                        <h3>Release Date</h3>
                        <div class="releasedate" id="release_date">
                            
                        </div>
                    </div>
                    <div class="mt-3">
                        <h3>Latest Music</h3>
                        <div id="latest_music" class="p-2">

                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>

<script src="./assets/js/vendor.min.js"></script>

<script src="./assets/js/app.min.js"></script>
<script src="./assets/js/owl.carousel.min.js"></script>

<script src="./assets/js/owl.carousel.js"></script>

<script src="./assets/js/script.js"></script>

<script></script>

</html>



