-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 20 Oca 2021, 21:42:47
-- Sunucu sürümü: 5.7.17-log
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smpthost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smptpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smpthost`, `ayar_smptpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/25190yazili.png', '', '', '', '', '0850 641 50 5570', '0850 641 50 55', '0850 641 50 55', 'info@enteldantel.com', 'İskenderun', 'Hatay', 'İskenderun Karaağaç', '7/24 açık e-ticaret hizmetinizde!', '', '', '', 'www.facebook.com', 'www.twitter.com', 'www.google.com', 'www.youtube.com', 'mail.alaadiniz.com', '', 'password', '587', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(2, 'Ziraat Bankası', 'TR8489656468465165', 'Sevgi Reyhani', '1'),
(3, 'İş Bankası', 'TR8974656468467546', 'Sevgi Reyhani', '1'),
(4, 'Garanti Bankası ', 'TR6546846513216546', 'Sevgi Reyhani', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Entel Dantel Eticaret Sitesi', 'Entel Dantel Eticaret Sitesi ileilgili detaylı içerik bulabilirsiniz.', 'video_kodu', 'Vizyonumuz kendini geliştirmek isteyenlere yöneliktir.', 'Misyonumuz kendini geliştirmek isteyenlere yöneliktir.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(1, 'kitaplar', 0, 'kitaplar', 1, '1'),
(2, 'plaklar', 0, 'plaklar', 2, '1'),
(3, 'kulaklıklar', 0, 'kulakliklar', 3, '1'),
(4, 'pikaplar', 0, 'pikaplar', 4, '0'),
(5, 'hoparlörler', 0, 'hoparlorler', 5, '0'),
(6, 'dergiler', 0, 'dergiler', 6, '0'),
(7, 'tablolar', 0, 'tablolar', 7, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL COMMENT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(1, '2020-12-12 20:15:17', '', '10595354840', '', 'info@enteldantel.com.tr', '0850 641 50 51', '81dc9bdb52d04dc20036dbd8313ed055', 'Sevgi Reyhani', '', 'Hatay', 'İskenderun', '', '5', 1),
(2, '2020-12-12 20:15:17', '', '10595354840', '', 'info@enteldantel.com.tr', '0850 641 50 51', '81dc9bdb52d04dc20036dbd8313ed055', 'Ali Yıldız', '', '', '', '', '6', 1),
(3, '2020-12-28 00:57:38', '', '', '', 'alisen@hotmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'Ali Şen', '', 'Mersin', 'Yenişehir', '', '1', 1),
(4, '2020-12-29 16:26:16', '', '', '', 'sevgireyhani@hotmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'sevgi reyhani', '', '', '', '', '1', 0),
(5, '2020-12-29 16:32:44', '', '8546258974', '', 'alisen1@hotmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'ali şen', '', '', '', '', '1', 1),
(6, '2020-12-29 16:37:43', '', '', '', 'alisen2@hotmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'ali şen', '', '', '', '', '1', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda ', '', 'hakkimizda', 1, '1', 'hakkimizda'),
(2, '0', 'İletişim', '', '', 2, '0', 'iletisim'),
(4, '0', 'Kategoriler', '', '', 3, '1', 'kategoriler'),
(7, '', 'Gizlilik koşullarımız', 'GİZLİLİK KOŞULLARI\r\n\r\nENTEL DANTEL web sitesini ziyaret eden tüm katılımcılar bu gizlilik bildirgesini okuduklarını ve bildirgeye uyacaklarını kabul ve taahhüt ederler.\r\n\r\nENTEL DANTEL sitesi ile katılımcılara muhtelif hizmetler verecektir. Anılan hizmetlerin ifası ile ilgili olarak ENTEL DANTEL\'ın manyetik ortamda, yazılı ve/veya sözlü olarak Katılımcı\'ya iletmiş olduğu veya Katılımcı\'nın herhangi bir surette öğrendiği ENTEL DANTEL\'a ait her türlü bilgi-belge gizli tutulacak olup, hiçbir şekilde-surette üçüncü kişi-kuruluşlara açıklanmayacak, aktarılmayacak, kullandırılmayacaktır.\r\n\r\nGizli Bilgi\'nin Tanımı ve Kapsamı\r\n\r\nENTEL DANTEL şirket verileri, web sitesi yazılımı, ürün bilgileri, müşteri bilgileri, muhasebe verileri, ticari, mali, teknik ve sair konularda sözlü, yazılı ve manyetik ortamda ve diğer herhangi bir surette Katılımcı\'ya iletilen ya da Katılımcı\'nın herhangi bir surette öğrendiği ENTEL DANTEL\'a, ENTEL DANTEL müşterilerine, ENTEL DANTEL ürünlerine, ENTEL DANTEL personeline, ENTEL DANTEL imalatçı-tedarikçilerine, ENTEL DANTEL ile ticari /akdi /fiili ilişkide olan sair kişi-kuruluşlara ve ENTEL DANTEL bilgisayar-elektronik sistemlerine ait, gizliliği Katılımcı\'ya bildirilen veya bildirilmeyen her türlü bilgi-belge ve veri (data) dosyaları, keza ENTEL DANTEL\'nin içinde yer aldığı ENTEL DANTEL Grubu Şirketlerine ait olan aynı mahiyetteki bilgi-belgeler-datalar, raporlar, istatistikler, sorgulamalar ve sorgulama sonuçları, model, yöntem, yenilik, buluş, metod ve usuller, velhasıl hertürlü belge ve dokümantasyon Gizli Bilgi\'dir.\r\n\r\nGizli Bilgiler Üzerinde Mülkiye Hakkı ve Tasarruf Yetkisi\r\n\r\nGizli Bilgiler ENTEL DANTEL\'nin mülkiyetindedir ve süresiz olarak mülkiyetinde kalmaya devam eder. Gizli Bilgiler üzerinde her türlü tasarruf yetkisi ENTEL DANTEL\'a aittir.\r\n\r\nGizli Bilgilerin her türlü kopyası da ENTEL DANTEL\'in mülkiyetindedir ve bunlar üzerindeki telif, mülkiyet ve her türlü haklar ile tasarruf yetkisi münhasıran ENTEL DANTEL\'e aittir.\r\n\r\nKatılımcı\'nın Gizli Bilgilerden Sorumluluğu, Taahhüt ve Yükümlülükleri\r\n\r\nKatılımcı, gizlilik esaslarına uygun hareket edecek, Gizli Bilgileri hiçbir şekilde kullanmayacak, açıklamayacak, dağıtmayacak, üçüncü kişilere bedelli/bedelsiz aktarmayacak ve kullandırmayacaktır.\r\n\r\nENTEL DANTEL\'in yazılı yada sözlü izni olmadan Gizli Bilgilerin tamamı veya bir kısmı kesinlikle Katılımcı tarafından çoğaltılmaz. Gizli Bilgiler hiçbir şekilde-surette ENTEL DANTEL ortamı dışına çıkarılamaz.\r\n\r\nYaptırım - Cezai Şart\r\n\r\nKatılımcı tarafından gizlilik bildirimine aykırı davranılması halinde, ENTEL DANTEL bu sebepten doğmuş-doğacak her türlü ve bütün doğrudan-dolaylı maddi ve manevi, müsbet ve menfi zarar, ziyan ve kayıplarını Katılımcı\'dan nakten ve defaten tazmin etmesini talep edebilir.', '', 4, '1', 'gizlilik-kosullarimiz'),
(8, '', 'Mesafeli Satış Sözleşmesi', 'Gümrük ve Ticaret Bakanlığından:\r\n\r\nMESAFELİ SÖZLEŞMELER YÖNETMELİĞİ\r\n\r\nBİRİNCİ BÖLÜM\r\n\r\nAmaç, Kapsam, Dayanak ve Tanımlar\r\n\r\nAmaç\r\n\r\nMADDE 1 – (1) Bu Yönetmeliğin amacı, mesafeli sözleşmelere ilişkin uygulama usul ve esaslarını düzenlemektir.\r\n\r\nKapsam\r\n\r\nMADDE 2 – (1) Bu Yönetmelik, mesafeli sözleşmelere uygulanır.\r\n\r\n(2) Bu Yönetmelik hükümleri;\r\n\r\na) Finansal hizmetler,\r\n\r\nb) Otomatik makineler aracılığıyla yapılan satışlar,\r\n\r\nc) Halka açık telefon vasıtasıyla telekomünikasyon operatörleriyle bu telefonun kullanımı,\r\n\r\nç) Bahis, çekiliş, piyango ve benzeri şans oyunlarına ilişkin hizmetler,\r\n\r\nd) Taşınmaz malların veya bu mallara ilişkin hakların oluşumu, devri veya kazanımı,\r\n\r\ne) Konut kiralama,\r\n\r\nf) Paket turlar,\r\n\r\ng) Devre mülk, devre tatil, uzun süreli tatil hizmeti ve bunların yeniden satımı veya değişimi,\r\n\r\nğ) Yiyecek ve içecekler gibi günlük tüketim maddelerinin, satıcının düzenli teslimatları çerçevesinde tüketicinin meskenine veya işyerine götürülmesi,\r\n\r\nh) 5 inci maddenin birinci fıkrasının (a), (b) ve (d) bentlerindeki bilgi verme yükümlülüğü ile 18 inci ve 19 uncu maddelerde yer alan yükümlülükler saklı kalmak koşuluyla yolcu taşıma hizmetleri,\r\n\r\nı) Malların montaj, bakım ve onarımı,\r\n\r\ni) Bakımevi hizmetleri, çocuk, yaşlı ya da hasta bakımı gibi ailelerin ve kişilerin desteklenmesine yönelik sosyal hizmetler\r\n\r\nile ilgili sözleşmelere uygulanmaz.\r\n\r\nDayanak\r\n\r\nMADDE 3 – (1) Bu Yönetmelik, 7/11/2013 tarihli ve 6502 sayılı Tüketicinin Korunması Hakkında Kanunun 48 inci ve 84 üncü maddelerine dayanılarak hazırlanmıştır.\r\n\r\nTanımlar\r\n\r\nMADDE 4 – (1) Bu Yönetmeliğin uygulanmasında;\r\n\r\na) Dijital içerik: Bilgisayar programı, uygulama, oyun, müzik, video ve metin gibi dijital şekilde sunulan her türlü veriyi,\r\n\r\nb) Hizmet: Bir ücret veya menfaat karşılığında yapılan ya da yapılması taahhüt edilen mal sağlama dışındaki her türlü tüketici işleminin konusunu,\r\n\r\nc) Kalıcı veri saklayıcısı: Tüketicinin gönderdiği veya kendisine gönderilen bilgiyi, bu bilginin amacına uygun olarak makul bir süre incelemesine elverecek şekilde kaydedilmesini ve değiştirilmeden kopyalanmasını sağlayan ve bu bilgiye aynen ulaşılmasına imkan veren kısa mesaj, elektronik posta, internet, disk, CD, DVD, hafıza kartı ve benzeri her türlü araç veya ortamı,\r\n\r\nç) Kanun: 6502 sayılı Tüketicinin Korunması Hakkında Kanunu,\r\n\r\nd) Mal: Alışverişe konu olan; taşınır eşya, konut veya tatil amaçlı taşınmaz mallar ile elektronik ortamda kullanılmak üzere hazırlanan yazılım, ses, görüntü ve benzeri her türlü gayri maddi malları,\r\n\r\ne) Mesafeli sözleşme: Satıcı veya sağlayıcı ile tüketicinin eş zamanlı fiziksel varlığı olmaksızın, mal veya hizmetlerin uzaktan pazarlanmasına yönelik olarak oluşturulmuş bir sistem çerçevesinde, taraflar arasında sözleşmenin kurulduğu ana kadar ve kurulduğu an da dahil olmak üzere uzaktan iletişim araçlarının kullanılması suretiyle kurulan sözleşmeleri,\r\n\r\nf) Sağlayıcı: Kamu tüzel kişileri de dahil olmak üzere ticari veya mesleki amaçlarla tüketiciye hizmet sunan ya da hizmet sunanın adına ya da hesabına hareket eden gerçek veya tüzel kişiyi,\r\n\r\ng) Satıcı: Kamu tüzel kişileri de dahil olmak üzere ticari veya mesleki amaçlarla tüketiciye mal sunan ya da mal sunanın adına ya da hesabına hareket eden gerçek veya tüzel kişiyi,\r\n\r\nğ) Tüketici: Ticari veya mesleki olmayan amaçlarla hareket eden gerçek veya tüzel kişiyi,\r\n\r\nh) Uzaktan iletişim aracı: Mektup, katalog, telefon, faks, radyo, televizyon, elektronik posta mesajı, kısa mesaj, internet gibi fiziksel olarak karşı karşıya gelinmeksizin sözleşme kurulmasına imkan veren her türlü araç veya ortamı,\r\n\r\nı) Yan sözleşme: Bir mesafeli sözleşme ile ilişkili olarak satıcı, sağlayıcı ya da üçüncü bir kişi tarafından sözleşme konusu mal ya da hizmete ilave olarak tüketiciye sağlanan mal veya hizmete ilişkin sözleşmeyi\r\n\r\nifade eder.\r\n\r\nİKİNCİ BÖLÜM\r\n\r\nÖn Bilgilendirme Yükümlülüğü\r\n\r\nÖn bilgilendirme\r\n\r\nMADDE 5 – (1) Tüketici, mesafeli sözleşmenin kurulmasından ya da buna karşılık gelen herhangi bir teklifi kabul etmeden önce, aşağıdaki hususların tamamını içerecek şekilde satıcı veya sağlayıcı tarafından bilgilendirilmek zorundadır.\r\n\r\na) Sözleşme konusu mal veya hizmetin temel nitelikleri,\r\n\r\nb) Satıcı veya sağlayıcının adı veya unvanı, varsa MERSİS numarası,\r\n\r\nc) Tüketicinin satıcı veya sağlayıcı ile hızlı bir şekilde irtibat kurmasına imkan veren, satıcı veya sağlayıcının açık adresi, telefon numarası ve benzeri iletişim bilgileri ile varsa satıcı veya sağlayıcının adına ya da hesabına hareket edenin kimliği ve adresi,\r\n\r\nç) Satıcı veya sağlayıcının tüketicinin şikayetlerini iletmesi için (c) bendinde belirtilenden farklı iletişim bilgileri var ise, bunlara ilişkin bilgi,\r\n\r\nd) Mal veya hizmetin tüm vergiler dahil toplam fiyatı, niteliği itibariyle önceden hesaplanamıyorsa fiyatın hesaplanma usulü, varsa tüm nakliye, teslim ve benzeri ek masraflar ile bunların önceden hesaplanamaması halinde ek masrafların ödenebileceği bilgisi,\r\n\r\ne) Sözleşmenin kurulması aşamasında uzaktan iletişim aracının kullanım bedelinin olağan ücret tarifesi üzerinden hesaplanamadığı durumlarda, tüketicilere yüklenen ilave maliyet,\r\n\r\nf) Ödeme, teslimat, ifaya ilişkin bilgiler ile varsa bunlara ilişkin taahhütler ve satıcı veya sağlayıcının şikayetlere ilişkin çözüm yöntemleri,\r\n\r\ng) Cayma hakkının olduğu durumlarda, bu hakkın kullanılma şartları, süresi, usulü ve satıcının iade için öngördüğü taşıyıcıya ilişkin bilgiler,\r\n\r\nğ) Cayma bildiriminin yapılacağı açık adres, faks numarası veya elektronik posta bilgileri,\r\n\r\nh) 15 inci madde uyarınca cayma hakkının kullanılamadığı durumlarda, tüketicinin cayma hakkından faydalanamayacağına ya da hangi koşullarda cayma hakkını kaybedeceğine ilişkin bilgi,\r\n\r\nı) Satıcı veya sağlayıcının talebi üzerine, varsa tüketici tarafından ödenmesi veya sağlanması gereken depozitolar ya da diğer mali teminatlar ve bunlara ilişkin şartlar,\r\n\r\ni) Varsa dijital içeriklerin işlevselliğini etkileyebilecek teknik koruma önlemleri,\r\n\r\nj) Satıcı veya sağlayıcının bildiği ya da makul olarak bilmesinin beklendiği, dijital içeriğin hangi donanım ya da yazılımla birlikte çalışabileceğine ilişkin bilgi,\r\n\r\nk) Tüketicilerin uyuşmazlık konusundaki başvurularını Tüketici Mahkemesine veya Tüketici Hakem Heyetine yapabileceklerine dair bilgi.\r\n\r\n(2) Birinci fıkrada belirtilen bilgiler, mesafeli sözleşmenin ayrılmaz bir parçasıdır ve taraflar aksini açıkça kararlaştırmadıkça bu bilgiler değiştirilemez.\r\n\r\n(3) Satıcı veya sağlayıcı, birinci fıkranın (d) bendinde yer alan ek masraflara ilişkin bilgilendirme yükümlülüğünü yerine getirmezse, tüketici bunları karşılamakla yükümlü değildir.\r\n\r\n(4) Birinci fıkranın (d) bendinde yer alan toplam fiyatın, belirsiz süreli sözleşmelerde veya belirli süreli abonelik sözleşmelerinde, her faturalama dönemi bazında toplam masrafları içermesi zorunludur.\r\n\r\n(5) Açık artırma veya eksiltme yoluyla kurulan sözleşmelerde, birinci fıkranın (b), (c) ve (ç) bentlerinde yer alan bilgilerin yerine açık artırmayı yapan ile ilgili bilgilere yer verilebilir.\r\n\r\n(6) Ön bilgilendirme yapıldığına ilişkin ispat yükü satıcı veya sağlayıcıya aittir.\r\n\r\nÖn bilgilendirme yöntemi\r\n\r\nMADDE 6 – (1) Tüketici, 5 inci maddenin birinci fıkrasında belirtilen tüm hususlarda, kullanılan uzaktan iletişim aracına uygun olarak en az on iki punto büyüklüğünde, anlaşılabilir bir dilde, açık, sade ve okunabilir bir şekilde satıcı veya sağlayıcı tarafından yazılı olarak veya kalıcı veri saklayıcısı ile bilgilendirilmek zorundadır.\r\n\r\n(2) Mesafeli sözleşmenin internet yoluyla kurulması halinde, satıcı veya sağlayıcı;\r\n\r\na) 5 inci maddenin birinci fıkrasında yer alan bilgilendirme yükümlülüğü saklı kalmak kaydıyla, aynı fıkranın (a), (d), (g) ve (h) bentlerinde yer alan bilgileri bir bütün olarak, tüketicinin ödeme yükümlülüğü altına girmesinden hemen önce açık bir şekilde ayrıca göstermek,\r\n\r\nb) Herhangi bir gönderim kısıtlamasının uygulanıp uygulanmadığını ve hangi ödeme araçlarının kabul edildiğini, en geç tüketici siparişini vermeden önce, açık ve anlaşılabilir bir şekilde belirtmek\r\n\r\nzorundadır.\r\n\r\n(3) Mesafeli sözleşmenin sesli iletişim yoluyla kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (d), (g) ve (h) bentlerinde yer alan hususlarda, tüketiciyi sipariş vermeden hemen önce açık ve anlaşılır bir şekilde söz konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en geç mal teslimine veya hizmet ifasına kadar yazılı olarak göndermek zorundadır.\r\n\r\n(4) Siparişe ilişkin bilgilerin sınırlı alanda ya da zamanda sunulduğu bir ortam yoluyla mesafeli sözleşmenin kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (b), (d), (g) ve (h) bentlerinde yer alan hususlarda, tüketiciyi sipariş vermeden hemen önce açık ve anlaşılabilir bir şekilde söz konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en geç mal teslimine veya hizmet ifasına kadar yazılı olarak göndermek zorundadır.\r\n\r\n(5) Üçüncü ve dördüncü fıkralarda belirtilen yöntemlerle kurulan ve anında ifa edilen hizmet satışlarına ilişkin sözleşmelerde tüketicinin, sipariş vermeden hemen önce söz konusu ortamda 5 inci maddenin birinci fıkrasının sadece (a), (b), (d) ve (h) bentlerinde yer alan hususlarda açık ve anlaşılır bir şekilde bilgilendirilmesi yeterlidir.\r\n\r\nÖn bilgilerin teyidi\r\n\r\nMADDE 7 – (1) Satıcı veya sağlayıcı, tüketicinin 6 ncı maddede belirtilen yöntemlerle ön bilgileri edindiğini kullanılan uzaktan iletişim aracına uygun olarak teyit etmesini sağlamak zorundadır. Aksi halde sözleşme kurulmamış sayılır.\r\n\r\nÖn bilgilendirmeye ilişkin diğer yükümlülükler\r\n\r\nMADDE 8 – (1) Satıcı veya sağlayıcı, tüketici siparişi onaylamadan hemen önce, verilen siparişin ödeme yükümlülüğü anlamına geldiği hususunda tüketiciyi açık ve anlaşılır bir şekilde bilgilendirmek zorundadır. Aksi halde tüketici siparişi ile bağlı değildir.\r\n\r\n(2) Tüketicinin mesafeli sözleşme kurulması amacıyla satıcı veya sağlayıcı tarafından telefonla aranması durumunda, her görüşmenin başında satıcı veya sağlayıcı kimliğini, eğer bir başkası adına veya hesabına arıyorsa bu kişinin kimliğini ve görüşmenin ticari amacını açıklamalıdır.\r\n\r\nÜÇÜNCÜ BÖLÜM\r\n\r\nCayma Hakkının Kullanımı ve Tarafların Yükümlülükleri\r\n\r\nCayma hakkı\r\n\r\nMADDE 9 – (1) Tüketici, on dört gün içinde herhangi bir gerekçe göstermeksizin ve cezai şart ödemeksizin sözleşmeden cayma hakkına sahiptir.\r\n\r\n(2) Cayma hakkı süresi, hizmet ifasına ilişkin sözleşmelerde sözleşmenin kurulduğu gün; mal teslimine ilişkin sözleşmelerde ise tüketicinin veya tüketici tarafından belirlenen üçüncü kişinin malı teslim aldığı gün başlar. Ancak tüketici, sözleşmenin kurulmasından malın teslimine kadar olan süre içinde de cayma hakkını kullanabilir.\r\n\r\n(3) Cayma hakkı süresinin belirlenmesinde;\r\n\r\na) Tek sipariş konusu olup ayrı ayrı teslim edilen mallarda, tüketicinin veya tüketici tarafından belirlenen üçüncü kişinin son malı teslim aldığı gün,\r\n\r\nb) Birden fazla parçadan oluşan mallarda, tüketicinin veya tüketici tarafından belirlenen üçüncü kişinin son parçayı teslim aldığı gün,\r\n\r\nc) Belirli bir süre boyunca malın düzenli tesliminin yapıldığı sözleşmelerde, tüketicinin veya tüketici tarafından belirlenen üçüncü kişinin ilk malı teslim aldığı gün\r\n\r\nesas alınır.\r\n\r\n(4) Malın satıcı tarafından taşıyıcıya teslimi, tüketiciye yapılan teslim olarak kabul edilmez.\r\n\r\n(5) Mal teslimi ile hizmet ifasının birlikte yapıldığı sözleşmelerde, mal teslimine ilişkin cayma hakkı hükümleri uygulanır.\r\n\r\nEksik bilgilendirme\r\n\r\nMADDE 10 – (1) Satıcı veya sağlayıcı, cayma hakkı konusunda tüketicinin bilgilendirildiğini ispat etmekle yükümlüdür. Tüketici, cayma hakkı konusunda gerektiği şekilde bilgilendirilmezse, cayma hakkını kullanmak için on dört günlük süreyle bağlı değildir. Bu süre her halükarda cayma süresinin bittiği tarihten itibaren bir yıl sonra sona erer.\r\n\r\n(2) Cayma hakkı konusunda gerektiği şekilde bilgilendirmenin bir yıllık süre içinde yapılması halinde, on dört günlük cayma hakkı süresi, bu bilgilendirmenin gereği gibi yapıldığı günden itibaren işlemeye başlar.\r\n\r\nCayma hakkının kullanımı\r\n\r\nMADDE 11 – (1) Cayma hakkının kullanıldığına dair bildirimin cayma hakkı süresi dolmadan, yazılı olarak veya kalıcı veri saklayıcısı ile satıcı veya sağlayıcıya yöneltilmesi yeterlidir.\r\n\r\n(2) Cayma hakkının kullanılmasında tüketici, EK’te yer alan formu kullanabileceği gibi cayma kararını bildiren açık bir beyanda da bulunabilir. Satıcı veya sağlayıcı, tüketicinin bu formu doldurabilmesi veya cayma beyanını gönderebilmesi için internet sitesi üzerinden seçenek de sunabilir.  İnternet sitesi üzerinden tüketicilere cayma hakkı sunulması durumunda satıcı veya sağlayıcı, tüketicilerin iletmiş olduğu cayma taleplerinin kendilerine ulaştığına ilişkin teyit bilgisini tüketiciye derhal iletmek zorundadır.\r\n\r\n(3) Sesli iletişim yoluyla yapılan satışlarda, satıcı veya sağlayıcı, EK’te yer alan formu en geç mal teslimine veya hizmet ifasına kadar tüketiciye göndermek zorundadır. Tüketici bu tür satışlarda da cayma hakkını kullanmak için bu formu kullanabileceği gibi, ikinci fıkradaki yöntemleri de kullanabilir.\r\n\r\n(4) Bu maddede geçen cayma hakkının kullanımına ilişkin ispat yükümlülüğü tüketiciye aittir.\r\n\r\nSatıcı veya sağlayıcının yükümlülükleri\r\n\r\nMADDE 12 – (1) Satıcı veya sağlayıcı, tüketicinin cayma hakkını kullandığına ilişkin bildirimin kendisine ulaştığı tarihten itibaren on dört gün içinde, varsa malın tüketiciye teslim masrafları da dahil olmak üzere tahsil edilen tüm ödemeleri iade etmekle yükümlüdür.\r\n\r\n(2) Satıcı veya sağlayıcı, birinci fıkrada belirtilen tüm geri ödemeleri, tüketicinin satın alırken kullandığı ödeme aracına uygun bir şekilde ve tüketiciye herhangi bir masraf veya yükümlülük getirmeden tek seferde yapmak zorundadır.\r\n\r\n(3) Cayma hakkının kullanımında, 5 inci maddenin birinci fıkrasının (g) bendi kapsamında, satıcının iade için belirttiği taşıyıcı aracılığıyla malın geri gönderilmesi halinde, tüketici iadeye ilişkin masraflardan sorumlu tutulamaz. Satıcının ön bilgilendirmede iade için herhangi bir taşıyıcıyı belirtmediği durumda ise, tüketiciden iade masrafına ilişkin herhangi bir bedel talep edilemez. İade için ön bilgilendirmede belirtilen taşıyıcının, tüketicinin bulunduğu yerde şubesinin olmaması durumunda satıcı, ilave hiçbir masraf talep etmeksizin iade edilmek istenen malın tüketiciden alınmasını sağlamakla yükümlüdür.\r\n\r\nTüketicinin yükümlülükleri\r\n\r\nMADDE 13 – (1) Satıcı veya sağlayıcı malı kendisinin geri alacağına dair bir teklifte bulunmadıkça, tüketici cayma hakkını kullandığına ilişkin bildirimi yönelttiği tarihten itibaren on gün içinde malı satıcı veya sağlayıcıya ya da yetkilendirmiş olduğu kişiye geri göndermek zorundadır.\r\n\r\n(2) Tüketici, cayma süresi içinde malı, işleyişine, teknik özelliklerine ve kullanım talimatlarına uygun bir şekilde kullandığı takdirde meydana gelen değişiklik ve bozulmalardan sorumlu değildir.\r\n\r\nCayma hakkının kullanımının yan sözleşmelere etkisi\r\n\r\nMADDE 14 – (1) Kanunun 30 uncu maddesi hükümleri saklı kalmak koşuluyla, tüketicinin cayma hakkını kullanması durumunda yan sözleşmeler de kendiliğinden sona erer. Bu durumda tüketici, 13 üncü maddenin ikinci fıkrasında belirtilen haller dışında herhangi bir masraf, tazminat veya cezai şart ödemekle yükümlü değildir.\r\n\r\n(2) Satıcı veya sağlayıcı, tüketicinin cayma hakkını kullandığını yan sözleşmenin tarafı olan üçüncü kişiye derhal bildirmelidir.\r\n\r\nCayma hakkının istisnaları\r\n\r\nMADDE 15 – (1) Taraflarca aksi kararlaştırılmadıkça, tüketici aşağıdaki sözleşmelerde cayma hakkını kullanamaz:\r\n\r\na) Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve satıcı veya sağlayıcının kontrolünde olmayan mal veya hizmetlere ilişkin sözleşmeler.\r\n\r\nb) Tüketicinin istekleri veya kişisel ihtiyaçları doğrultusunda hazırlanan mallara ilişkin sözleşmeler.\r\n\r\nc) Çabuk bozulabilen veya son kullanma tarihi geçebilecek malların teslimine ilişkin sözleşmeler.\r\n\r\nç) Tesliminden sonra ambalaj, bant, mühür, paket gibi koruyucu unsurları açılmış olan mallardan; iadesi sağlık ve hijyen açısından uygun olmayanların teslimine ilişkin sözleşmeler.\r\n\r\nd) Tesliminden sonra başka ürünlerle karışan ve doğası gereği ayrıştırılması mümkün olmayan mallara ilişkin sözleşmeler.\r\n\r\ne) Malın tesliminden sonra ambalaj, bant, mühür, paket gibi koruyucu unsurları açılmış olması halinde maddi ortamda sunulan kitap, dijital içerik ve bilgisayar sarf malzemelerine ilişkin sözleşmeler.\r\n\r\nf) Abonelik sözleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi süreli yayınların teslimine ilişkin sözleşmeler.\r\n\r\ng) Belirli bir tarihte veya dönemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-içecek tedariki ve eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin sözleşmeler.\r\n\r\nğ) Elektronik ortamda anında ifa edilen hizmetler veya tüketiciye anında teslim edilen gayrimaddi mallara ilişkin sözleşmeler.\r\n\r\nh) Cayma hakkı süresi sona ermeden önce, tüketicinin onayı ile ifasına başlanan hizmetlere ilişkin sözleşmeler.\r\n\r\nDÖRDÜNCÜ BÖLÜM\r\n\r\nDiğer Hükümler\r\n\r\nSözleşmenin ifası ve teslimat\r\n\r\nMADDE 16 – (1) Satıcı veya sağlayıcı, tüketicinin siparişinin kendisine ulaştığı tarihten itibaren taahhüt ettiği süre içinde edimini yerine getirmek zorundadır. Mal satışlarında bu süre her halükarda otuz günü geçemez.\r\n\r\n(2) Satıcı veya sağlayıcının birinci fıkrada yer alan yükümlülüğünü yerine getirmemesi durumunda, tüketici sözleşmeyi feshedebilir.\r\n\r\n(3) Sözleşmenin feshi durumunda, satıcı veya sağlayıcı, varsa teslimat masrafları da dâhil olmak üzere tahsil edilen tüm ödemeleri fesih bildiriminin kendisine ulaştığı tarihten itibaren on dört gün içinde tüketiciye 4/12/1984 tarihli ve 3095 sayılı Kanuni Faiz ve Temerrüt Faizine İlişkin Kanunun 1 inci maddesine göre belirlenen kanuni faiziyle birlikte geri ödemek ve varsa tüketiciyi borç altına sokan tüm kıymetli evrak ve benzeri belgeleri iade etmek zorundadır.\r\n\r\n(4) Sipariş konusu mal ya da hizmet ediminin yerine getirilmesinin imkansızlaştığı hallerde satıcı veya sağlayıcının bu durumu öğrendiği tarihten itibaren üç gün içinde tüketiciye yazılı olarak veya kalıcı veri saklayıcısı ile bildirmesi ve varsa teslimat masrafları da dâhil olmak üzere tahsil edilen tüm ödemeleri bildirim tarihinden itibaren en geç on dört gün içinde iade etmesi zorunludur. Malın stokta bulunmaması durumu, mal ediminin yerine getirilmesinin imkânsızlaşması olarak kabul edilmez.\r\n\r\nZarardan sorumluluk\r\n\r\nMADDE 17 – (1) Satıcı, malın tüketici ya da tüketicinin taşıyıcı dışında belirleyeceği üçüncü bir kişiye teslimine kadar oluşan kayıp ve hasarlardan sorumludur.\r\n\r\n(2) Tüketicinin, satıcının belirlediği taşıyıcı dışında başka bir taşıyıcı ile malın gönderilmesini talep etmesi durumunda, malın ilgili taşıyıcıya tesliminden itibaren oluşabilecek kayıp ya da hasardan satıcı sorumlu değildir.\r\n\r\nTelefon kullanım ücreti\r\n\r\nMADDE 18 – (1) Kurulmuş olan sözleşmeye ilişkin olarak tüketicilerin iletişime geçebilmesi için satıcı veya sağlayıcı tarafından bir telefon hattı tahsis edilmesi durumunda, bu hat ile ilgili olarak satıcı veya sağlayıcı olağan ücret tarifesinden daha yüksek bir tarife seçemez.\r\n\r\nİlave ödemeler\r\n\r\nMADDE 19 – (1) Sözleşme kurulmadan önce, sözleşme yükümlülüğünden kaynaklanan ve üzerinde anlaşılmış esas bedel dışında herhangi bir ilave bedel talep edilebilmesi için tüketicinin açık onayının ayrıca alınması zorunludur.\r\n\r\n(2) Tüketicinin açık onayı alınmadan ilave ödeme yükümlülüğü doğuran seçeneklerin kendiliğinden seçili olarak sunulmuş olmasından dolayı tüketici bir ödemede bulunmuş ise, satıcı veya sağlayıcı bu ödemelerin iadesini derhal yapmak zorundadır.\r\n\r\nBilgilerin saklanması ve ispat yükümlülüğü\r\n\r\nMADDE 20 − (1) Satıcı veya sağlayıcı, bu Yönetmelik kapsamında düzenlenen cayma hakkı, bilgilendirme, teslimat ve diğer hususlardaki yükümlülüklerine dair her bir işleme ilişkin bilgi ve belgeyi üç yıl boyunca saklamak zorundadır.\r\n\r\n(2) Oluşturdukları sistem çerçevesinde, uzaktan iletişim araçlarını kullanmak veya kullandırmak suretiyle satıcı veya sağlayıcı adına mesafeli sözleşme kurulmasına aracılık edenler, bu Yönetmelikte yer alan hususlardan dolayı satıcı veya sağlayıcı ile yapılan işlemlere ilişkin kayıtları üç yıl boyunca tutmak ve istenilmesi halinde bu bilgileri ilgili kurum, kuruluş ve tüketicilere vermekle yükümlüdür.\r\n\r\n(3) Satıcı veya sağlayıcı elektronik ortamda tüketiciye teslim edilen gayrimaddi malların veya ifa edilen hizmetlerin ayıpsız olduğunu ispatla yükümlüdür.\r\n\r\nBEŞİNCİ BÖLÜM\r\n\r\nÇeşitli ve Son Hükümler\r\n\r\nYürürlükten kaldırılan yönetmelik\r\n\r\nMADDE 21 – (1) 6/3/2011 tarihli ve 27866 sayılı Resmî Gazete’de yayımlanan Mesafeli Sözleşmelere Dair Yönetmelik yürürlükten kaldırılmıştır.\r\n\r\nYürürlük\r\n\r\nMADDE 22 – (1) Bu Yönetmelik yayımı tarihinden itibaren üç ay sonra yürürlüğe girer.\r\n\r\nYürütme\r\n\r\nMADDE 23 – (1) Bu Yönetmelik hükümlerini Gümrük ve Ticaret Bakanı yürütür.\r\n\r\n \r\n\r\n \r\n\r\nEK\r\n\r\nÖRNEK CAYMA FORMU\r\n\r\n \r\n\r\n(Bu form, sadece sözleşmeden cayma hakkı kullanılmak istenildiğinde doldurup\r\n\r\ngönderilecektir.)\r\n\r\n \r\n\r\n \r\n\r\n-Kime: (Satıcı veya sağlayıcı tarafından doldurulacak olan bu kısımda satıcı veya sağlayıcının ismi, unvanı, adresi varsa faks numarası ve e-posta adresi yer alacaktır.)\r\n\r\n \r\n\r\n \r\n\r\n-Bu formla aşağıdaki malların satışına veya hizmetlerin sunulmasına ilişkin sözleşmeden cayma hakkımı kullandığımı beyan ederim.\r\n\r\n \r\n\r\n \r\n\r\n-Sipariş tarihi veya teslim tarihi:\r\n\r\n \r\n\r\n \r\n\r\n-Cayma hakkına konu mal veya hizmet:\r\n\r\n \r\n\r\n \r\n\r\n-Cayma hakkına konu mal veya hizmetin bedeli:\r\n\r\n \r\n\r\n \r\n\r\n-Tüketicinin adı ve soyadı:\r\n\r\n \r\n\r\n \r\n\r\n-Tüketicinin adresi:\r\n\r\n \r\n\r\n \r\n\r\n-Tüketicinin imzası: (Sadece kağıt üzerinde gönderilmesi halinde)\r\n\r\n \r\n\r\n \r\n\r\n-Tarih:', '', 15, '1', 'mesafeli-satis-sozlesmesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(20, 0, 33, 1),
(21, 0, 37, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_banka` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `siparis_odeme`) VALUES
(750022, '2021-01-17 15:19:48', NULL, 3, 50.00, 'Banka Havalesi', 'Ziraat Bankası', '0'),
(750023, '2021-01-17 15:22:27', NULL, 3, 25.00, 'Banka Havalesi', 'Ziraat Bankası', '0'),
(750024, '2021-01-17 18:03:50', NULL, 3, 25.00, 'Banka Havalesi', 'Ziraat Bankası', '0'),
(750025, '2021-01-20 14:50:38', NULL, 3, 60.00, 'Banka Havalesi', 'Ziraat Bankası', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES
(1, 750023, 30, 0.00, 1),
(2, 750023, 29, 25.00, 1),
(3, 750024, 29, 25.00, 1),
(4, 750025, 33, 60.00, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(6, 'slider10', 'dimg/slider/31561289732944227888slider10.jpg', 5, '', '1'),
(8, 'slider9.2', 'dimg/slider/20340296212322030324slider9.2.jpg', 5, '', '1'),
(11, 'slider12.1', 'dimg/slider/25119286062296828508slider12.1(16-9).jpg', 6, '', '1'),
(12, 'sliderpic', 'dimg/slider/23225299052134329187PicsArt_12-26-02.34.12.jpg', 7, '', '1'),
(14, 'sliderkitap', 'dimg/slider/23547200312818121516PicsArt_12-26-02.55.49.jpg', 5, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(32, 1, '2021-01-19 23:22:36', 'Here Comes The Sun', 'here-comes-the-sun', '<p>Kitabın Adı: Here Comes The Sun</p>\r\n\r\n<p>Dili: İngilizce</p>\r\n', 50.00, '', 'sun', 10, '1', '1'),
(33, 1, '2021-01-19 23:26:21', 'Dear Haiti Love Alaine', 'dear-haiti-love-alaine', '<p>Kİtabın Adı: Dear Haiti, Love Alaine</p>\r\n\r\n<p>Dili: İngilizce</p>\r\n', 60.00, '', 'dear', 13, '1', '1'),
(35, 1, '2021-01-19 23:30:20', 'Şeker Portakalı', 'seker-portakali', '<p>Kitabın Adı: Şeker Portakalı</p>\r\n\r\n<p>Dili: T&uuml;rk&ccedil;e</p>\r\n', 20.00, '', 'şeker', 17, '1', '0'),
(36, 1, '2021-01-19 23:34:18', 'Beyaz Zambaklar Ülkesinde', 'beyaz-zambaklar-ulkesinde', '<p>Kitabın Adı: Beyaz Zambaklar &Uuml;lkesinde</p>\r\n\r\n<p>Dili: T&uuml;rk&ccedil;e</p>\r\n', 12.00, '', 'zambak', 8, '1', '0'),
(37, 1, '2021-01-19 23:35:29', 'Kirke', 'kirke', '<p>Kitabın Adı:Kirke</p>\r\n\r\n<p>Dili: T&uuml;rk&ccedil;e</p>\r\n', 35.00, '', 'kirke', 10, '1', '0'),
(38, 1, '2021-01-19 23:37:00', 'Bir Çöküşün Öyküsü', 'bir-cokusun-oykusu', '<p>Kitabın Adı: Bir &Ccedil;&ouml;k&uuml;ş&uuml;n &Ouml;yk&uuml;s&uuml;</p>\r\n\r\n<p>Dili: T&uuml;rk&ccedil;e</p>\r\n', 8.00, '', 'çöküş', 2, '1', '0'),
(40, 2, '2021-01-19 23:46:42', 'King Gizzard Lizard Wizard', 'king-gizzard-lizard-wizard', '<p>Plak Adı: King Gizzard Lizard Wizar</p>\r\n', 70.00, '', 'king', 3, '1', ''),
(41, 2, '2021-01-19 23:49:29', 'Janis Joplin\'s', 'janis-joplin-s', '', 100.00, '', 'janis', 1, '1', '1'),
(42, 2, '2021-01-19 23:50:53', 'Jack Johnson* In Between Dreams', 'jack-johnson-in-between-dreams', '<p>Jack Johnson In Between Dreams</p>\r\n', 150.00, '', 'janis', 20, '1', '1'),
(43, 2, '2021-01-19 23:52:49', 'Frank Sinatra Sings For Only The Lonely', 'frank-sinatra-sings-for-only-the-lonely', '<h1>Frank Sinatra Sings For Only The Lonely</h1>\r\n', 200.00, '', 'frank', 15, '1', '1'),
(44, 3, '2021-01-19 23:54:26', 'JBL', 'jbl', '', 350.00, '', 'jbl', 150, '1', '0'),
(45, 3, '2021-01-19 23:55:21', 'Jabra', 'jabra', '', 150.00, '', 'jabra', 250, '1', '0'),
(46, 3, '2021-01-19 23:56:04', 'Bluetooth Kulaklık', 'bluetooth-kulaklik', '', 99.00, '', 'blu', 500, '1', ''),
(47, 7, '2021-01-20 00:00:42', 'Tablo1', 'tablo1', '', 1000.00, '', 'tablo', 1, '1', ''),
(48, 7, '2021-01-20 00:03:13', 'Tablo2', 'tablo2', '', 1500.00, '', 'tablo', 1, '1', '0'),
(49, 7, '2021-01-20 00:03:51', 'Tablo3', 'tablo3', '', 250.00, '', 'tablo', 0, '1', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urunfoto_sira` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(5, 30, 'dimg/urun/264972375127976248101.jfif', 1),
(6, 30, 'dimg/urun/289872548123498261602.jfif', 2),
(7, 30, 'dimg/urun/298712621624447249203.jfif', 3),
(8, 29, 'dimg/urun/265202630530437290530001781525002-1.jpg', 0),
(12, 32, 'dimg/urun/2154725130285312772251idwysiYuL._SX331_BO1,204,203,200_.jpg', 0),
(13, 32, 'dimg/urun/2903229829280413018971u1PY5Dx5L.jpg', 0),
(14, 33, 'dimg/urun/2411425573209552362451NIZVttPrL (1).jpg', 0),
(15, 33, 'dimg/urun/2493820511238472501496af9659-1474-44c1-8d87-37e026955606.__CR0,0,300,300_PT0_SX300_V1___.jfif', 0),
(16, 33, 'dimg/urun/23392226072237720412382c523d-bc80-4b90-b5ba-31503cc8af92.__CR0,0,300,300_PT0_SX300_V1___.jfif', 0),
(20, 34, 'dimg/urun/22408260153197021622p0000000064031-1.jpg', 0),
(21, 34, 'dimg/urun/210332504225246285420000000064031-1 (1).jpg', 0),
(22, 34, 'dimg/urun/23080250532981830821p0000000064031-2.jpg', 0),
(25, 35, 'dimg/urun/223693130731044246550000000064031-1 (1).jpg', 0),
(26, 36, 'dimg/urun/260312412420088278060001784820001-1.jpg', 0),
(27, 37, 'dimg/urun/212892102825460290580001836978001-1.jpg', 0),
(28, 38, 'dimg/urun/265552878525652297250001689176001-1.jpg', 0),
(29, 39, 'dimg/urun/276472969328942211340858978005035_360x.jpg', 0),
(30, 40, 'dimg/urun/309572213221645275780880882413712_360x.jpg', 0),
(31, 41, 'dimg/urun/200852898725481234980190758195810_1024x1024@2x.jpg', 0),
(32, 42, 'dimg/urun/27954230182778926430Jack JohnsonIn Between Dreams.jpg', 0),
(33, 43, 'dimg/urun/296112135220996218003826021_1024x1024@2x.jpg', 0),
(34, 44, 'dimg/urun/296512341324400244580001781525002-1.jpg', 0),
(35, 45, 'dimg/urun/220793089731041285410001797791002-1.jpg', 0),
(36, 46, 'dimg/urun/201972282627123250310001722641002-1.jpg', 0),
(37, 47, 'dimg/urun/261602287920575265201f54be76-34ff-4eed-a6fb-05896f741c67.jfif', 0),
(38, 48, 'dimg/urun/263053043729053242696a9687cc-edb8-4de8-a17b-64e545a14cca.jfif', 0),
(39, 49, 'dimg/urun/2532630722298812808415917959-c6ea-49f8-8ada-ec4177679962.jfif', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750026;
--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
