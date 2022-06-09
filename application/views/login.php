<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url(); ?>asset/img/logo1.png">
    <title>SIA</title>
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url(); ?>asset/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url(); ?>asset/css/stylish-portfolio.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>asset/color/default.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>asset/css/style.css">
    <!-- Custom Fonts -->
    <link href="<?php echo base_url(); ?>asset/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>

<body>
    <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
                <a>MENU SIA</a>
            </li>
            <li>
                <a href="#top" onclick=$("#menu-close").click();>Home</a>
            </li>
            <li>
                <a href="#information" onclick=$("#menu-close").click();>Information</a>
            </li>
            <li>
                <a href="#about" onclick=$("#menu-close").click();>About Us</a>
            </li>
        </ul>
    </nav>

    <!-- Header -->
    <header id="top" class="header">
        <div class="text-vertical-center">
            <p><img src="<?php echo base_url(); ?>asset/img/logo1.png" width="15%" height="15%"></p>
            <h1>
                <!-- <a href="index.html"><img src="<?php echo base_url(); ?>asset/img/logo.png" width="55%" height="55%"></a> -->
                SISTEM INFORMASI AKADEMIK
            </h1>
            <div class="line-spacer"></div>
            <h2>
                <p><span>SELAMAT DATANG</span></p>
            </h2>
            <button class="btn btn-success" type="submit" data-target="#LoginAdmin" data-toggle="modal">
                LOGIN
            </button>
        </div>
    </header>

    <!-- Information -->
    <section id="information" class="home-section bg-white">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-2 col-md-8" align="center">
                    <div class="section-heading">
                        <h2>INFORMATION</h2><br>
                        <table id="mytable" class="table table-striped table-bordered table-hover">
                            <thead>
                                <th class="active"></th>
                                <th colspan="3" class="active"></th>
                                <th class="active"></th>
                            </thead>
                            <thead>
                                <?php foreach ($dataInformasi as $i) { ?>
                                    <th class="active"></th>
                                    <th colspan="3" align="center">
                                        <?php echo $i->tanggal; ?><br>
                                        <a href="#">
                                            <?php echo $i->judul; ?><br>
                                        </a>
                                        <?php echo $i->isi; ?>
                                    </th>
                                    <th class="active"></th>
                            </thead>
                        <?php } ?>
                        <thead>
                            <th class="active"></th>
                            <th colspan="3" class="active"></th>
                            <th class="active"></th>
                        </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About -->
    <!-- <section id="about" class="home-section bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-2 col-md-8" align="center">
                    <div class="section-heading">
                        <h2>About Us</h2>
                        <img src="<?php echo base_url(); ?>asset/img/staip.png" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
    </section> -->

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12" align="center">
                    <p>Copyright &copy; <?= date('Y') ?> SISTEM INFORMASI AKADEMIK</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="<?php echo base_url(); ?>asset/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url(); ?>asset/js/bootstrap.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script>
        // Closes the sidebar menu
        $("#menu-close").click(function(e) {
            e.preventDefault();
            $("#sidebar-wrapper").toggleClass("active");
        });
        // Opens the sidebar menu
        $("#menu-toggle").click(function(e) {
            e.preventDefault();
            $("#sidebar-wrapper").toggleClass("active");
        });
        // Scrolls to the selected menu item on the page
        $(function() {
            $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    if (target.length) {
                        $('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        });
        //#to-top button appears after scrolling
        var fixed = false;
        $(document).scroll(function() {
            if ($(this).scrollTop() > 250) {
                if (!fixed) {
                    fixed = true;
                    // $('#to-top').css({position:'fixed', display:'block'});
                    $('#to-top').show("slow", function() {
                        $('#to-top').css({
                            position: 'fixed',
                            display: 'block'
                        });
                    });
                }
            } else {
                if (fixed) {
                    fixed = false;
                    $('#to-top').hide("slow", function() {
                        $('#to-top').css({
                            display: 'none'
                        });
                    });
                }
            }
        });
        // Disable Google Maps scrolling
        // See http://stackoverflow.com/a/25904582/1607849
        // Disable scroll zooming and bind back the click event
        var onMapMouseleaveHandler = function(event) {
            var that = $(this);
            that.on('click', onMapClickHandler);
            that.off('mouseleave', onMapMouseleaveHandler);
            that.find('iframe').css("pointer-events", "none");
        }
        var onMapClickHandler = function(event) {
            var that = $(this);
            // Disable the click handler until the user leaves the map area
            that.off('click', onMapClickHandler);
            // Enable scrolling zoom
            that.find('iframe').css("pointer-events", "auto");
            // Handle the mouse leave event
            that.on('mouseleave', onMapMouseleaveHandler);
        }
        // Enable map zooming with mouse scroll when the user clicks the map
        $('.map').on('click', onMapClickHandler);
    </script>

    <div id="LoginAdmin" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="col-md-8 col-md-offset-2">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myModalLabel" align="center">Please Sign In</h4>
                    </div>
                    <div class="modal-body">
                        <form action="<?php echo base_url('Auth/login'); ?>" onsubmit="return cekform();" name="modal_popup" enctype="multipart/form-data" method="POST">
                            <div class="form-group" style="padding-bottom: 20px;" align="center">
                                <input type="text" name="username" id="username" class="form-control" placeholder="Username" required />
                            </div>
                            <div class="form-group" style="padding-bottom: 20px;" align="center">
                                <input type="Password" name="password" id="password" class="form-control" placeholder="Password" required />
                            </div>
                            <div class="form-group">
                                <label>Level</label><br>
                                <select class="form-control select2" name="level">

                                    <option value="0">Administrator</option>
                                    <option value="1">Dosen</option>
                                    <option value="2">Mahasiswa</option>
                                </select>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-success" type="submit">
                                    Login
                                </button>
                                <button type="reset" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">
                                    Cancel
                                </button>
                            </div>
                            <div>
                                <p>
                                    Ketentuan Login :<br>
                                    <hr>
                                    Pastikan Username dan Password benar<br>
                                    Pastikan Anda sudah terdaftar sebagai pengguna.
                                </p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Popup untuk Edit-->
    <div id="ModalEdit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

        <!-- Javascript untuk popup modal Edit-->
        <script type="text/javascript">
            $(document).ready(function() {
                $(".open_modal").click(function(e) {
                    var m = $(this).attr("id");
                    $.ajax({
                        url: "master/info_show.php",
                        type: "GET",
                        data: {
                            id_informasi: m,
                        },
                        success: function(ajaxData) {
                            $("#ModalEdit").html(ajaxData);
                            $("#ModalEdit").modal('show', {
                                backdrop: 'true'
                            });
                        }
                    });
                });
            });
        </script>
</body>

</html>