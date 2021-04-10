			<div class="col-md-3"><!--sidebar-->
				<div class="title-bg">
					<div class="title">Kategoriler</div>
				</div>
				
				<div class="categorybox">
					<ul>

						<?php 
			$kategorisor=$db->prepare("SELECT * FROM kategori order by kategori_sira ASC");
			$kategorisor->execute();
			while($kategoricek=$kategorisor->fetch(PDO::FETCH_ASSOC)) { ?>
			
			<li><a href="kategori-<?=seo($kategoricek["kategori_ad"]) ?>"><?php echo $kategoricek['kategori_ad'] ?></a></li>

			<?php } ?>
		</ul>
	</div>

				


<!-- Kategoriler yukarıda -->




	<div class="ads">
		<a href="product.htm"><img src="dimg\ads.jpg" class="img-responsive" alt=""></a>
	</div>

	<div class="title-bg">
		<div class="title">Çok Satanlar</div>
	</div>
	<div class="best-seller">
		<ul>
			<li class="clearfix">
				<a href="#"><img src="dimg\donusum.jpg" alt="" class="img-responsive mini"></a>
				<div class="mini-meta">
					<a href="#" class="smalltitle2">Dönüşüm </a>
					<p class="smallprice2">Fiyat: 25 ₺</p>
				</div>
			</li>
			<li class="clearfix">
				<a href="#"><img src="dimg\fahrenheit.jpg" alt="" class="img-responsive mini"></a>
				<div class="mini-meta">
					<a href="#" class="smalltitle2">Fahreneit</a>
					<p class="smallprice2">Fiyat: 18 ₺</p>
				</div>
			</li>
			<li class="clearfix">
				<a href="#"><img src="dimg\hayvanciftligi.jpg" alt="" class="img-responsive mini"></a>
				<div class="mini-meta">
					<a href="#" class="smalltitle2">Hayvan Çiftliği</a>
					<p class="smallprice2">Fiyat: 19 ₺</p>
				</div>
			</li>
		</ul>
	</div>

			</div><!--sidebar-->





<!--


				<div class="title-bg">
					<div class="title">Çok Satan -       Popüler Kültür</div>
				</div>

				<div class="best-seller">
					<ul>
						<li class="clearfix">
							<a href="#"><img src="donusum.jpg" alt="" class="img-responsive mini"></a>
							<div class="mini-meta">
								<a href="#" class="smalltitle2">Dönüşüm</a>
								<p class="smallprice2">Fiyat : 13₺</p>
							</div>
						</li>
						<li class="clearfix">
							<a href="#"><img src="hayvanciftligi.jpg" alt="" class="img-responsive mini"></a>
							<div class="mini-meta">
								<a href="#" class="smalltitle2">Hayvan Çiftliği</a>
								<p class="smallprice2">Fiyat : 18₺</p>
							</div>
						</li>
						<li class="clearfix">
							<a href="#"><img src="fahrenheit.jpg" alt="" class="img-responsive mini"></a>
							<div class="mini-meta">
								<a href="#" class="smalltitle2">Fahrenheit</a>
								<p class="smallprice2">Fiyat : 25 ₺</p>
							</div>
						</li>
					</ul>
				</div>
				
			</div><!--sidebar-->