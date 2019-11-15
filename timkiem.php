<?php
include('controllers/tintucController.php');

$c_tintuc = new C_tintuc();

if (isset($_POST['tukhoa'])) {
    $key = $_POST['tukhoa'];
    $tintuc = $c_tintuc->timkiem($key);


?>
        <div class="panel panel-default">
            <div style="font-size: 18px; padding-top: 25px; padding-left: 25px;">Tìm thấy <strong style="color: red;"><?php echo count($tintuc)?></strong> kết quả cho <strong style="color: red;"><?=$key?></strong></div>
            <?php
            foreach ($tintuc as $tin) {
            ?>
                <div class="row-item row">
                    <div class="col-md-3">
                    
                        <a href="chitiet.php?loai_tin=<?= $tin->tenkhongdau ?>&alias=<?=$tin->TieuDeKhongDau?>&id_tin=<?= $tin->id ?>">
                            <br>
                            <img width="200px" height="200px" class="img-responsive" src="public/image/tintuc/<?= $tin->Hinh ?>" alt="">
                        </a>
                    </div>

                    <div class="col-md-9">
                        <h3><?= $tin->TieuDe ?></h3>
                        <p><?= $tin->TomTat ?></p>
                        <a class="btn btn-primary" href="chitiet.php?loai_tin=<?= $tin->tenkhongdau ?>&alias=<?=$tin->TieuDeKhongDau?>&id_tin=<?= $tin->id ?>">Chi tiết <span class="glyphicon glyphicon-chevron-right"></span></a>
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
            <!-- <div class="row text-center">
                <div class="col-lg-12">
                    <div>
                        <?= $thanh_phantrang ?>
                    </div>
                </div>
            </div> -->
            <!-- /.row -->

        </div>

<?php

}

?>