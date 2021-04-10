<?php 

include 'header.php' ; 

$urunsor=$db->prepare("SELECT * FROM urun where urun_id=:urun_id");
$urunsor->execute(array(
  'urun_id' => $_GET['urun_id']
  ));

$uruncek=$urunsor->fetch(PDO::FETCH_ASSOC);

echo$say=$urunsor->rowCount();


if ($say==0) {
	
	header("Location:index.php?durum=no");
	exit;
}

?>
<head>
	
	<!-- fancy Style -->
	<link rel="stylesheet" type="text/css" href="js\product\jquery.fancybox.css?v=2.1.5" media="screen">
</head>



	
	
	<div class="container">
		<div class="row">
			
		</div>
		<div class="row">
			<div class="col-md-9"><!--Main content-->
				<div class="title-bg">
					<div class="title"><?php echo $uruncek['urun_ad']?></div>
				</div>
				<div class="row">
					<div class="col-md-6">
						

					<?php
					$urun_id=$uruncek['urun_id'];
					$urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1 ");
					$urunfotosor->execute(array(
						'urun_id' => $urun_id
						));
					$urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC);

					?>
					

					<div class="dt-img">
						<div class="detpricetag"><div class="inner"><?php echo $uruncek['urun_fiyat'] ?> TL</div></div>
						<a class="fancybox" href="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" data-fancybox-group="gallery" title="Cras neque mi, semper leon"><img src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive"></a>
					</div>


					<?php
					$urun_id=$uruncek['urun_id'];
					$urunfotosor=$db->prepare("SELECT * FROM urunfoto where urun_id=:urun_id order by urunfoto_sira ASC limit 1,3 ");
					$urunfotosor->execute(array(
						'urun_id' => $urun_id
						));

					while($urunfotocek=$urunfotosor->fetch(PDO::FETCH_ASSOC)) {

					?>

					<div class="thumb-img">
						<a class="fancybox" href="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" data-fancybox-group="gallery" title="Cras neque mi, semper leon"><img src="<?php echo $urunfotocek['urunfoto_resimyol'] ?>" alt="" class="img-responsive"></a>
					</div>

					<?php } ?>

				</div>
				<div class="col-md-6 det-desc">
					<div class="productdata">
						<div class="infospan">Ürün Kodu <span><?php echo $uruncek['urun_id']; ?></span></div>
						<div class="infospan">Ürün Fiyat <span><?php echo $uruncek['urun_fiyat']; ?></span></div>

							
							<div class="clearfix"></div>
							<hr>

								<form action="radmin/netting/islem.php" method="POST">



									<div class="form-group">
							<label for="qty" class="col-sm-2 control-label">Adet</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" value="1" name="urun_adet">
							</div>
							<input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id'] ?>">

										<input type="hidden" name="urun_id" value="<?php echo $uruncek['urun_id'] ?>">
							<div class="col-sm-4">
								<button type="submit" name="sepetekle" class="btn btn-default btn-red btn-sm"><span class="addchart">Sepete Ekle</span></button>
							</div>
							<div class="clearfix"></div>
						</div>

							</form>
					
							<div class="sharing">
								<div class="share-bt">
									<div class="addthis_toolbox addthis_default_style ">
										<a class="addthis_counter addthis_pill_style"></a>
									</div>
									<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4f0d0827271d1c3b"></script>
									<div class="clearfix"></div>
								</div>
								<div class="avatock"><span>
								<?php if ($uruncek['urun_stok']>=1) {

									echo "Stok Adeti : ".$uruncek['urun_stok'];
								} else {

									echo "Ürün Kalmadı";

									} ?>

								</span></div>
							</div>
							
						</div>
					</div>
				</div>

				<div class="tab-review">
					<ul id="myTab" class="nav nav-tabs shop-tab">
						<li class="active"><a href="#desc" data-toggle="tab">Açıklama</a></li>
						<li class=""><a href="#rev" data-toggle="tab">Yorumlar (0)</a></li>
					</ul>
					<div id="myTabContent" class="tab-content shop-tab-ct">
						<div class="tab-pane fade active in" id="desc">
							<p>
							<?php echo $uruncek['urun_detay'] ?>
							</p>
						</div>
						<div class="tab-pane fade" id="rev">
							
<!--yorumlar -->
							
							
<!--yorumlar -->


							<h4>Yorum Yazın</h4>
							<?php if (isset($_SESSION['userkullanici_mail'])) {?>

						<form role="form">
							
							<div class="form-group">
								<textarea class="form-control" placeholder="Lütfen yorumunuzu buraya yazınız..." id="text"></textarea>
							</div>
							
							<button type="submit" class="btn btn-default btn-red btn-sm">Yorumu Gönder</button>
						</form>

						<?php } else {?>

						Yorum yazabilmek için <a style="color:red" href="register">kayıt</a> olmalısınız. Eğer kayıtlı kullanıcıysanız lütfen giriş yapınız.

						<?php } ?>

						

					</div>

					<div class="tab-pane fade " id="video">
						<p>
							
						</div>
					</div>
				</div>
				
				
				<div class="spacer"></div>
			</div><!--Main content-->
			<?php include 'sidebar.php' ; ?>
		</div>
	</div>
	
	<?php include 'footer.php' ?>