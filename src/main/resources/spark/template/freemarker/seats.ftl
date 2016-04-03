<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LibHigh | Library is a funny place.</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- iconfont -->
    <link href="dist/iconfont/iconfont.css" rel="stylesheet" type="text/css"/>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!--iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/square/blue.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.css">
    <link rel="stylesheet" href="dist/css/skins/skin-red.min.css">
    <link rel="stylesheet" href="stylesheets/stylesheet.css">
</head>
<body class="hold-transition skin-red sidebar-mini">
<div class="login-background" style="visibility: hidden">
</div>
<div class="login-mask" style="visibility: hidden">
    <i class="ion-close-circled" style="position:absolute;top:5px;right:10px;"></i>
    <div class="login-box">
        <div class="login-logo">
            <a href="./seats.html"><b>Lib</b>HIGH</a>
        </div><!-- /.login-logo -->
        <div class="login-box-body">
            <p class="login-box-msg">Sign in to start your session</p>
            <form action="./seats.html" method="post">
                <div class="form-group has-feedback">
                    <input type="email" class="form-control" placeholder="Email">
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <input type="password" class="form-control" placeholder="Password">
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <div class="checkbox icheck">
                            <label>
                                <input type="checkbox"> Remember Me
                            </label>
                        </div>
                    </div><!-- /.col -->
                    <div class="col-xs-4">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                    </div><!-- /.col -->
                </div>
            </form>

            <div class="social-auth-links text-center">
                <p>- OR -</p>
                <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign
                    in using Facebook</a>
                <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign
                    in using Google+</a>
            </div><!-- /.social-auth-links -->

            <a href="#">I forgot my password</a><br>
            <a href="register.html" class="text-center">Register a new membership</a>

        </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
</div>
<div class="wrapper">
    <!-- Main Header -->
    <header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>L</b>H</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Lib</b>HIGH</span>
        </a>
        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
                </div>
            </form>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <!-- Menu toggle button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the messages -->
                                <ul class="menu">
                                    <li>
                                        <!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <!-- User Image -->
                                                <img src="dist/img/user9-160x160.jpg" class="img-circle"
                                                     alt="User Image">
                                            </div>
                                            <!-- Message title and timestamp -->
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <!-- The message -->
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                </ul>
                                <!-- /.menu -->
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- /.messages-menu -->
                    <!-- Notifications Menu -->
                    <li class="dropdown notifications-menu">
                        <!-- Menu toggle button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 10 notifications</li>
                            <li>
                                <!-- Inner Menu: contains the notifications -->
                                <ul class="menu">
                                    <li>
                                        <!-- start notification -->
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                        </a>
                                    </li>
                                    <!-- end notification -->
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="dist/img/user9-160x160.jpg" class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">${user.userName}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="dist/img/user9-160x160.jpg" class="img-circle" alt="User Image">
                                <p>
                                ${user.userName} - Web Developer
                                    <small>Member since Feb. 2016</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="col-xs-4 text-center">
                                    <a href="#">Followers</a>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <a href="#">Friends</a>
                                </div>
                                <div class="col-xs-4 text-center">
                                    <a href="./groups.html">Groups</a>
                                </div>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="./homepage.html" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown login-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"></a>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <!-- /.search form -->
        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">HEADER</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="treeview">
                <a href="./timeline.html"> <i class="fa fa-home"></i> <span>Home</span></a>
            </li>
            <li class="active treeview">
                <a href="#"><i class="fa fa-laptop"></i> <span>Seats</span></a>
            </li>
            <li class="treeview">
                <a href="./homepage.html"><i class="fa fa-user"></i> <span>Profile</span> <i
                        class="fa fa-angle-left pull-right"></i></a>
                <ul class="treeview-menu">
                    <li><a href="#">Link in level 2</a></li>
                    <li><a href="#">Link in level 2</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-users"></i> <span>Friends</span></a>
            </li>
            <li class="treeview">
                <a href="./groups.html"><i class="fa fa-tags"></i> <span>Groups</span></a>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="main-content clearfix">
            <section class="group-list">
                <div class="box box-solid">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Groups</h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                        class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <ul class="products-list product-list-in-box">
                                <li class="item">
                                    <div class="product-img">
                                        <img src="dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript#" class="product-title">Web Technology
                                            <span class="label label-warning pull-right">34</span></a>
                                              <span class="product-description">
                                              How to survive from homework?
                                              </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="product-img">
                                        <img src="dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript#" class="product-title">Data Mining
                                            <span class="label label-info pull-right">19</span></a>
                                              <span class="product-description">
                                              Same question. Help me plz.
                                              </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="product-img">
                                        <img src="dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript#" class="product-title">Cloud Computing<span
                                                class="label label-danger pull-right">56</span></a>
                                              <span class="product-description">
                                              Your homework is nothing, try mine.
                                              </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="product-img">
                                        <img src="dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript#" class="product-title">Interactive System Design
                                            <span class="label label-success pull-right">5</span></a>
                                              <span class="product-description">
                                              Leave me alone.
                                              </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                            </ul>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer text-center">
                            <a href="./groups.html" class="uppercase">View All Groups</a>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                </div>
            </section>
            <!-- Main content -->
            <section class="seat-list">
                <div class="box box-solid">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Seats</h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                        class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <ul class="products-list product-list-in-box">
                                <li class="item">
                                    <div class="info-box bg-yellow">
                                        <span class="info-box-icon"><b>1F</b></span>
                                        <div class="info-box-content">
                                            <div class="seat-item">
                                                <i class="iconfont icon-yizi"></i>
                                                <span class="seat-item-text">Single</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-zu1"></i>
                                                <span class="seat-item-text">Table</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-shafa1"></i>
                                                <span class="seat-item-text">Sofa</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-icon"></i>
                                                <span class="seat-item-text">Quiet</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-diannao2"></i>
                                                <span class="seat-item-text">Lab</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-zhuotai1"></i>
                                                <span class="seat-item-text">Cafe</span>
                                            </div>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="info-box bg-green">
                                        <span class="info-box-icon"><b>2F</b></span>
                                        <div class="info-box-content">
                                            <div class="seat-item">
                                                <i class="iconfont icon-yizi"></i>
                                                <span class="seat-item-text">Single</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-zu1"></i>
                                                <span class="seat-item-text">Table</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-shafa1"></i>
                                                <span class="seat-item-text">Sofa</span>
                                            </div>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="info-box bg-red">
                                        <span class="info-box-icon"><b>3F</b></span>
                                        <div class="info-box-content">
                                            <div class="seat-item">
                                                <i class="iconfont icon-yizi"></i>
                                                <span class="seat-item-text">Single</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-zu1"></i>
                                                <span class="seat-item-text">Table</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-shafa1"></i>
                                                <span class="seat-item-text">Sofa</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-icon"></i>
                                                <span class="seat-item-text">Quiet</span>
                                            </div>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="info-box bg-aqua">
                                        <span class="info-box-icon"><b>4F</b></span>
                                        <div class="info-box-content">
                                            <div class="seat-item">
                                                <i class="iconfont icon-yizi"></i>
                                                <span class="seat-item-text">Single</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-zu1"></i>
                                                <span class="seat-item-text">Table</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-shafa1"></i>
                                                <span class="seat-item-text">Sofa</span>
                                            </div>
                                            <div class="seat-item">
                                                <i class="iconfont icon-icon"></i>
                                                <span class="seat-item-text">Quiet</span>
                                            </div>
                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                </li>
                                <!-- /.item -->
                            </ul>
                        </div>
                        <!-- /.box-body -->
                    </div>
                </div>
            </section>
        </div>
        <!-- /.main-content -->
    </div>
    <!-- /.content-wrapper -->
    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            Anything you want
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2015 <a href="#">Company</a>.</strong> All rights reserved.
    </footer>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane active" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript#">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->
                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript#">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="label label-danger pull-right">70%</span>
                            </h4>
                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->
            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>
                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Some information about this general settings option
                        </p>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
        immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 2.1.4 -->
<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.js"></script>
<!-- iCheck -->
<script src="./plugins/iCheck/icheck.min.js"></script>
<script src="js/seats.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
    Both of these plugins are recommended to enhance the
    user experience. Slimscroll is required when using the
    fixed layout. -->
</body>
</html>
