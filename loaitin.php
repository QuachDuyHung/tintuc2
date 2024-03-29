<?php
session_start();
include('controllers/tintucController.php');
$c_tintuc = new C_tintuc();
$tintucs = $c_tintuc->loaitin();
$tintuc = $tintucs['danhmuctin'];
$menu = $tintucs['menu'];
$title = $tintucs['title'];
$thanh_phantrang = $tintucs['thanh_phantrang'];
//print_r($tintuc);
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> Tin tức</title>

    <base href="http://localhost/tintuc/">

    <!-- Bootstrap Core CSS -->
    <link href="public/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="public/css/shop-homepage.css" rel="stylesheet">
    <link href="public/css/my.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.public/js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php"> Tin Tức</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">Giới thiệu</a>
                    </li>
                    <li>
                        <a href="#">Liên hệ</a>
                    </li>
                </ul>

                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" id="txtSearch" class="form-control" placeholder="Search">
                    </div>
                    <button type="button" id="btnSearch" class="btn btn-default">Tìm kiếm</button>
                </form>

                <ul class="nav navbar-nav pull-right">
                    <?php
						if(isset($_SESSION['user_name']))   
						{
					?>

					<li>
						<a>
							<span class="glyphicon glyphicon-user"></span>
							<?php echo $_SESSION['user_name'] ?>
						</a>
                    </li>
                    <li>
						<a href="dangxuat.php">Đăng xuất</a>
					</li>

					<?php
					}
					?>					

					<?php
						if(!isset($_SESSION['user_name']))
						{
					?>
					<li>
						<a href="dang-ki">Đăng ký</a>
					</li>
					<li>
						<a href="dang-nhap">Đăng nhập</a>
					</li>
					<?php
					}
					?>				

                </ul>
            </div>



            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-md-3 ">
                <ul class="list-group" id="menu">
                    <li href="#" class="list-group-item menu1 active">
                        Menu
                    </li>

                    <?php
                    foreach ($menu as $mn) {
                        ?>
                        <li class="list-group-item menu1">
                            <?= $mn->Ten ?>
                        </li>

                        <ul>
                            <?php
                            $loaitin = explode(',', $mn->LoaiTin);
                            //print_r($loaitin);
                            foreach ($loaitin as $loai) {
                                list($id, $ten, $tenkhongdau) = explode(':', $loai);
                                ?>
                                <li class="list-group-item">
                                    <a href="<?=$tenkhongdau?>-<?= $id ?>.html"><?= $ten ?></a>
                                </li>
                            <?php
                        }
                        ?>
                        </ul>
                    <?php
                }
                ?>

                </ul>
            </div>

            <div class="col-md-9 " id="datasearch">
                <div class="panel panel-default">
                    <div class="panel-heading" style="background-color:#337AB7; color:white;">
                        <h4><b><?php echo $title->Ten ?></b></h4>
                    </div>
                    <?php
                    foreach ($tintuc as $tin) {
                        ?>
                        <div class="row-item row">
                            <div class="col-md-3">

                                <a href="<?=$tin->TenKhongDau?>/<?=$tin->TieuDeKhongDau?>-<?=$tin->id?>.html">
                                    <br>
                                    <img width="200px" height="200px" class="img-responsive" src="public/image/tintuc/<?= $tin->Hinh ?>" alt="">
                                </a>
                            </div>

                            <div class="col-md-9">
                                <h3><?= $tin->TieuDe ?></h3>
                                <p><?= $tin->TomTat ?></p>
                                <a class="btn btn-primary" href="<?=$tin->TenKhongDau?>/<?=$tin->TieuDeKhongDau?>-<?=$tin->id?>.html">Chi tiết <span class="glyphicon glyphicon-chevron-right"></span></a>
                            </div>
                            <div class="break"></div>
                        </div>
                    <?php
                    }
                    ?>
                    <!-- Pagination -->
                    <!-- <div class="row text-center">
                        <div class="col-lg-12">
                            <ul class="pagination">
                                <li>
                                    <a href="#">&laquo;</a>
                                </li>
                                <li class="active">
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                                <li>
                                    <a href="#">4</a>
                                </li>
                                <li>
                                    <a href="#">5</a>
                                </li>
                                <li>
                                    <a href="#">&raquo;</a>
                                </li>
                            </ul>
                        </div>
                    </div> -->
                    <div class="row text-center">
                        <div class="col-lg-12">
                            <div>
                                <?= $thanh_phantrang ?>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                </div>
            </div>

        </div>

    </div>
    <!-- end Page Content -->

    <!-- Footer -->
    <hr>
    <footer>
        <div class="row">
            <div class="col-md-12">
                <p>Copyright &copy; Your Website 2014</p>
            </div>
        </div>
    </footer>
    <!-- end Footer -->
    <!-- jQuery -->
    <script src="public/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="public/js/bootstrap.min.js"></script>
    <script src="public/js/my.js"></script>

    <script>
        $(document).ready(function(){
            $("#btnSearch").click(function(){
                var keyword = $('#txtSearch').val();
                $.post("timkiem.php", {tukhoa:keyword}, function(data){
                    $('#datasearch').html(data);
                })
            })
        })
    </script>

</body>

</html>