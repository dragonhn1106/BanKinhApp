 <style type="text/css">
    figure{
        position: relative;
    }
 </style>
 <div id="right">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-3">
                    <h3 class="text-center" style="background-color:#98b827;color:white;"><i class="fa fa-bookmark" aria-hidden="true"></i>&#160;Sách mới</h3>
                </div>
            </div>
        </div>
        <section class="grid-holder features-books">
            <?php foreach ($data as $key => $value) {
            ?>
                <figure class="span4 slide first chinh1" style="position:relative;">
                    <?php $date_time=explode(" ",trim($value['create_time']));?>
                    <?php if(strtotime($date_time[0])===strtotime(date('Y-m-d H:i:s'))) { ?>
                        <img src="public/images/New_icons.gif" style="width:35px;height:20px;position:absolute;" alt="">
                    <?php } ?>
                    <a href="?cn=detail&method=index&idBook=<?php echo $value['id'];?>"><img src="<?php echo UPLOAD_IMG.$value['HinhAnh'];?>" alt="Images" class="pro-img"/></a>
                    <p>
                        <span class="title">
                            <a href="?cn=detail&method=index&idBook=<?php echo $value['id'];?>" style="font-weight: bold"><?php echo $value['TenSach'];?></a>
                        </span>
                    </p>
                    <p>Tác giả:
                        <a class="nxb" href="?cn=home&method=nhaphanphoi&idnhaphanphoi=<?php echo $value['id_npp'];?>"><?php echo $value['TenNPP'];?></a>
                    </p>
                    <p>Thể loại:
                        <a class="nxb" href="?cn=home&method=typebook&idTypeBook=<?php echo $value['id_loai'];?>"><?php echo $value['TenLoai'];?></a>
                    </p>
                    <div class="cart-price">
                        <a class="cart-btn2" href="#">Thêm vào giỏ hàng</a>
                        <span class="price"><?php echo number_format($value['GiaCu']);?>&#160;VNĐ</span>
                    </div>
                </figure>
            <?php } ?>
        </section>
    </div>
</section>