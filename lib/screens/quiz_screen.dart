import 'package:flutter/material.dart';
import 'dart:math';

class SoalKuis {
  final String pertanyaan;
  final List<String> pilihan;
  final int jawabanBenar;
  final String penjelasan;
  final String kategori;

  const SoalKuis({
    required this.pertanyaan,
    required this.pilihan,
    required this.jawabanBenar,
    required this.penjelasan,
    required this.kategori,
  });
}

final List<SoalKuis> bankSoal = [

  // ═══════════ KESENIAN (15 soal) ═══════════
  SoalKuis(pertanyaan: 'Ondel-ondel adalah kesenian khas daerah mana?', pilihan: ['Jawa Tengah', 'Betawi / Jakarta', 'Jawa Barat', 'Bali'], jawabanBenar: 1, penjelasan: 'Ondel-ondel adalah boneka raksasa khas Betawi yang kini menjadi ikon budaya Jakarta.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Tarian Betawi yang menggunakan topeng sebagai properti utama disebut?', pilihan: ['Tari Kecak', 'Tari Saman', 'Tari Topeng', 'Tari Pendet'], jawabanBenar: 2, penjelasan: 'Tari Topeng Betawi adalah tarian tradisional yang biasa ditampilkan dalam upacara adat dan hiburan rakyat.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Musik tradisional Betawi yang memadukan alat musik Tionghoa dan Melayu disebut?', pilihan: ['Gamelan', 'Gambang Kromong', 'Angklung', 'Keroncong'], jawabanBenar: 1, penjelasan: 'Gambang Kromong adalah musik perpaduan budaya Tionghoa dan Melayu yang biasa mengiringi lenong.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Pertunjukan teater rakyat khas Betawi yang menghibur dengan lawakan disebut?', pilihan: ['Wayang Kulit', 'Ludruk', 'Lenong', 'Ketoprak'], jawabanBenar: 2, penjelasan: 'Lenong adalah pertunjukan teater rakyat Betawi yang menggabungkan cerita, nyanyian, dan lawakan.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Tinggi ondel-ondel biasanya sekitar berapa meter?', pilihan: ['1 meter', '1,5 meter', '2,5 meter', '4 meter'], jawabanBenar: 2, penjelasan: 'Ondel-ondel umumnya memiliki tinggi sekitar 2,5 meter dengan kerangka dari anyaman bambu.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Tari Betawi yang biasa dibawakan saat pesta pernikahan adalah?', pilihan: ['Tari Cokek', 'Tari Reog', 'Tari Jaipong', 'Tari Legong'], jawabanBenar: 0, penjelasan: 'Tari Cokek adalah tarian Betawi yang biasa ditampilkan dalam pesta pernikahan dan hiburan rakyat.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Alat musik petik khas Betawi yang mirip gitar disebut?', pilihan: ['Kecapi', 'Tehyan', 'Tanjidor', 'Sukong'], jawabanBenar: 1, penjelasan: 'Tehyan adalah alat musik gesek khas Betawi yang mendapat pengaruh dari budaya Tionghoa.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Kesenian arak-arakan dengan musik tiup khas Betawi disebut?', pilihan: ['Barongsai', 'Tanjidor', 'Reog', 'Debus'], jawabanBenar: 1, penjelasan: 'Tanjidor adalah musik arak-arakan khas Betawi yang menggunakan alat musik tiup dan perkusi.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Topeng dalam Tari Topeng Betawi melambangkan?', pilihan: ['Dewa-dewi', 'Karakter dan watak manusia', 'Hewan mitologi', 'Leluhur Betawi'], jawabanBenar: 1, penjelasan: 'Setiap topeng dalam Tari Topeng Betawi mewakili karakter dan watak manusia yang berbeda-beda.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Ondel-ondel secara tradisional berfungsi sebagai?', pilihan: ['Hiasan rumah', 'Penolak bala', 'Mainan anak', 'Hadiah pernikahan'], jawabanBenar: 1, penjelasan: 'Dulunya ondel-ondel dipercaya berfungsi sebagai penolak bala dan pelindung kampung dari roh jahat.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Siapakah seniman Betawi legendaris yang dikenal sebagai maestro Lenong?', pilihan: ['Benyamin Sueb', 'Rhoma Irama', 'Bing Slamet', 'A. Rafiq'], jawabanBenar: 0, penjelasan: 'Benyamin Sueb adalah seniman Betawi legendaris yang terkenal dalam dunia Lenong, film, dan musik Betawi.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Gambang Kromong biasanya mengiringi pertunjukan apa?', pilihan: ['Wayang golek', 'Lenong dan Tari Betawi', 'Reog Ponorogo', 'Ludruk'], jawabanBenar: 1, penjelasan: 'Gambang Kromong adalah musik pengiring utama pertunjukan Lenong dan berbagai tarian Betawi.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Warna yang identik dengan ondel-ondel pria adalah?', pilihan: ['Putih', 'Hijau', 'Merah', 'Biru'], jawabanBenar: 2, penjelasan: 'Ondel-ondel pria identik dengan wajah merah, sementara ondel-ondel wanita berwajah putih.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Tari Yapong diciptakan untuk merayakan?', pilihan: ['Hari Kemerdekaan RI', 'HUT DKI Jakarta', 'Tahun Baru Imlek', 'Maulid Nabi'], jawabanBenar: 1, penjelasan: 'Tari Yapong diciptakan oleh Bagong Kussudiardja pada 1977 khusus untuk merayakan HUT DKI Jakarta.', kategori: 'kesenian'),
  SoalKuis(pertanyaan: 'Kerangka ondel-ondel secara tradisional terbuat dari?', pilihan: ['Kayu jati', 'Anyaman bambu', 'Rotan', 'Besi'], jawabanBenar: 1, penjelasan: 'Kerangka ondel-ondel secara tradisional dibuat dari anyaman bambu yang ringan namun kuat.', kategori: 'kesenian'),

  // ═══════════ KULINER (15 soal) ═══════════
  SoalKuis(pertanyaan: 'Makanan khas Betawi yang dimasak dengan cara wajan dibalik ke bara api adalah?', pilihan: ['Soto Betawi', 'Gado-gado', 'Kerak Telor', 'Nasi Uduk'], jawabanBenar: 2, penjelasan: 'Kerak Telor dimasak dengan cara unik — wajan dibalik menghadap bara api agar bagian atas ikut matang.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Soto Betawi menggunakan kuah dari?', pilihan: ['Kaldu ayam bening', 'Santan atau susu', 'Kuah asam', 'Kuah kacang'], jawabanBenar: 1, penjelasan: 'Yang membedakan Soto Betawi adalah kuahnya yang menggunakan santan atau susu sapi sehingga terasa gurih dan creamy.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Minuman herbal khas Betawi yang berwarna merah dari kayu secang adalah?', pilihan: ['Es Dawet', 'Bir Pletok', 'Wedang Jahe', 'Es Cendol'], jawabanBenar: 1, penjelasan: 'Bir Pletok adalah minuman herbal khas Betawi dari jahe, serai, dan kayu secang yang memberi warna merah.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Bahan utama Kerak Telor adalah?', pilihan: ['Beras putih dan telur ayam', 'Beras ketan dan telur bebek', 'Tepung dan telur puyuh', 'Singkong dan telur bebek'], jawabanBenar: 1, penjelasan: 'Kerak Telor dibuat dari beras ketan putih dan telur bebek, ditambah ebi dan kelapa sangrai.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Nasi yang dimasak dengan santan dan rempah khas Betawi disebut?', pilihan: ['Nasi Goreng', 'Nasi Kuning', 'Nasi Uduk', 'Nasi Liwet'], jawabanBenar: 2, penjelasan: 'Nasi Uduk adalah nasi yang dimasak dengan santan, serai, daun salam, dan rempah lainnya, sangat populer di Jakarta.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Makanan Betawi berupa sayuran rebus dengan bumbu kacang disebut?', pilihan: ['Asinan', 'Gado-gado', 'Pecel', 'Lotek'], jawabanBenar: 1, penjelasan: 'Gado-gado Betawi adalah sajian sayuran rebus dengan bumbu kacang yang khas, berbeda dengan gado-gado daerah lain.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Asinan Betawi terdiri dari?', pilihan: ['Buah-buahan saja', 'Sayuran saja', 'Campuran buah dan sayur dengan kuah cuka pedas', 'Daging dan sayuran'], jawabanBenar: 2, penjelasan: 'Asinan Betawi adalah campuran buah dan sayuran yang disiram kuah cuka pedas manis, segar dan unik.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Kue tradisional Betawi yang sering ada di acara pernikahan berbentuk seperti apa?', pilihan: ['Bulat seperti bola', 'Segitiga', 'Wajik berlapis', 'Kotak'], jawabanBenar: 2, penjelasan: 'Wajik adalah kue tradisional Betawi dari beras ketan yang dimasak dengan gula merah dan santan, sering ada di pernikahan.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Sup daging khas Betawi dengan kuah bening berisi berbagai jeroan disebut?', pilihan: ['Rawon', 'Soto Mie', 'Semur Jengkol', 'Sayur Asem'], jawabanBenar: 1, penjelasan: 'Soto Mie Betawi adalah sup dengan mie, daging, jeroan, dan kuah kaldu yang segar.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Jengkol yang dimasak dengan kecap dan bumbu khas Betawi disebut?', pilihan: ['Jengkol Goreng', 'Semur Jengkol', 'Jengkol Bakar', 'Rendang Jengkol'], jawabanBenar: 1, penjelasan: 'Semur Jengkol adalah masakan ikonik Betawi berupa jengkol yang dimasak dengan kecap manis dan rempah.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Bir Pletok disebut "bir" karena?', pilihan: ['Mengandung alkohol', 'Rasanya pahit seperti bir', 'Tampilannya berbusa dan menyegarkan', 'Dibuat oleh Belanda'], jawabanBenar: 2, penjelasan: 'Bir Pletok disebut bir karena tampilannya yang berbusa dan menyegarkan, meski sama sekali tidak mengandung alkohol.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Kerak Telor biasanya dijual di mana?', pilihan: ['Restoran mewah', 'Festival dan Pekan Raya Jakarta', 'Supermarket', 'Warung pinggir jalan biasa'], jawabanBenar: 1, penjelasan: 'Kerak Telor paling sering ditemukan di Festival Betawi dan Pekan Raya Jakarta (PRJ) sebagai makanan ikonik.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Sayur Asem khas Betawi dibedakan dari daerah lain karena?', pilihan: ['Lebih pedas', 'Tanpa kacang tanah dan lebih bening', 'Menggunakan santan', 'Ditambah terasi'], jawabanBenar: 1, penjelasan: 'Sayur Asem Betawi tidak menggunakan kacang tanah sehingga kuahnya lebih bening dan segar dibanding versi Sunda.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Telur dalam Kerak Telor biasanya menggunakan telur jenis apa?', pilihan: ['Telur ayam kampung', 'Telur bebek', 'Telur puyuh', 'Telur angsa'], jawabanBenar: 1, penjelasan: 'Telur bebek digunakan dalam Kerak Telor karena ukurannya lebih besar dan rasanya lebih gurih dari telur ayam.', kategori: 'kuliner'),
  SoalKuis(pertanyaan: 'Dodol Betawi terbuat dari bahan utama apa?', pilihan: ['Singkong', 'Beras ketan, santan, dan gula merah', 'Tepung terigu', 'Ubi jalar'], jawabanBenar: 1, penjelasan: 'Dodol Betawi dibuat dari beras ketan, santan, dan gula merah yang dimasak berjam-jam hingga mengental.', kategori: 'kuliner'),

  // ═══════════ BAHASA (15 soal) ═══════════
  SoalKuis(pertanyaan: 'Kata "Aye" dalam bahasa Betawi artinya?', pilihan: ['Kamu', 'Dia', 'Saya', 'Kita'], jawabanBenar: 2, penjelasan: '"Aye" adalah kata ganti orang pertama (saya) dalam bahasa Betawi yang lebih tradisional.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: '"Ente" dalam bahasa Betawi artinya?', pilihan: ['Saya', 'Kamu', 'Mereka', 'Kita'], jawabanBenar: 1, penjelasan: '"Ente" berasal dari bahasa Arab "anta" yang artinya kamu, diserap ke dalam dialek Betawi.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: '"Nyang bener aje!" artinya dalam bahasa Indonesia?', pilihan: ['Jangan bohong!', 'Yang benar saja!', 'Tidak mungkin!', 'Masa sih!'], jawabanBenar: 1, penjelasan: '"Nyang" adalah pengucapan Betawi dari kata "yang". Jadi "Nyang bener aje" = "Yang benar saja!"', kategori: 'bahasa'),
  SoalKuis(pertanyaan: 'Kata "Kagak" dalam bahasa Betawi artinya?', pilihan: ['Iya', 'Tidak', 'Mungkin', 'Belum'], jawabanBenar: 1, penjelasan: '"Kagak" adalah kata negatif khas Betawi yang artinya "tidak" atau "bukan".', kategori: 'bahasa'),
  SoalKuis(pertanyaan: '"Nyokap" dalam slang Betawi artinya?', pilihan: ['Kakak perempuan', 'Ibu', 'Nenek', 'Tante'], jawabanBenar: 1, penjelasan: '"Nyokap" adalah kata slang Betawi untuk ibu, pasangannya adalah "bokap" untuk ayah.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: 'Apa arti kata "Babe" dalam bahasa Betawi?', pilihan: ['Kakek', 'Paman', 'Ayah', 'Abang'], jawabanBenar: 2, penjelasan: '"Babe" adalah panggilan khas Betawi untuk ayah, berbeda dengan "bokap" yang lebih ke slang modern.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: '"Emak" dalam bahasa Betawi merujuk kepada?', pilihan: ['Nenek', 'Ibu', 'Bibi', 'Kakak perempuan'], jawabanBenar: 1, penjelasan: '"Emak" adalah panggilan tradisional Betawi untuk ibu, masih sering dipakai di keluarga Betawi asli.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: 'Kata "Kite" dalam dialek Betawi artinya?', pilihan: ['Layang-layang', 'Kita / Kami', 'Mereka', 'Kalian'], jawabanBenar: 1, penjelasan: '"Kite" adalah pengucapan Betawi dari "kita" — itulah kenapa app kita namanya Betawi Kite!', kategori: 'bahasa'),
  SoalKuis(pertanyaan: '"Duit" yang sering dipakai di Jakarta berasal dari bahasa?', pilihan: ['Arab', 'Portugis', 'Belanda', 'Tionghoa'], jawabanBenar: 2, penjelasan: '"Duit" berasal dari bahasa Belanda "duit" yang artinya koin atau uang kecil, diserap ke bahasa Betawi dan kini dipakai nasional.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: 'Apa arti "Kebet" dalam bahasa Betawi?', pilihan: ['Lempar', 'Pukul', 'Lari', 'Tendang'], jawabanBenar: 0, penjelasan: '"Kebet" dalam bahasa Betawi artinya melempar atau membuang sesuatu dengan gerakan cepat.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: '"Ngobrol" yang kini dipakai nasional berasal dari dialek?', pilihan: ['Sunda', 'Jawa', 'Betawi', 'Melayu'], jawabanBenar: 2, penjelasan: '"Ngobrol" adalah kata dari dialek Betawi yang artinya berbicara santai, kini sudah dipakai di seluruh Indonesia.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: 'Kata "Gue" sebagai pengganti "saya" berasal dari bahasa?', pilihan: ['Arab', 'Belanda', 'Tionghoa Hokkien', 'Portugis'], jawabanBenar: 2, penjelasan: '"Gue" berasal dari bahasa Hokkien "gua" yang artinya saya, diserap ke dalam dialek Betawi sejak lama.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: '"Lu" sebagai kata ganti orang kedua berasal dari?', pilihan: ['Bahasa Arab', 'Bahasa Tionghoa', 'Bahasa Belanda', 'Bahasa Melayu'], jawabanBenar: 1, penjelasan: '"Lu" juga berasal dari bahasa Hokkien "lu" yang artinya kamu, masuk ke dialek Betawi sejak era perdagangan.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: 'Ungkapan "Udah ah!" dalam bahasa Betawi mengungkapkan?', pilihan: ['Semangat', 'Sudah cukup / berhenti', 'Belum selesai', 'Ayo mulai'], jawabanBenar: 1, penjelasan: '"Udah ah!" adalah ungkapan Betawi yang menandakan sudah cukup atau ingin mengakhiri sesuatu.', kategori: 'bahasa'),
  SoalKuis(pertanyaan: '"Bokap" dalam slang Betawi artinya?', pilihan: ['Ibu', 'Kakak laki-laki', 'Ayah', 'Paman'], jawabanBenar: 2, penjelasan: '"Bokap" adalah kata slang Betawi untuk ayah, pasangannya "nyokap" untuk ibu.', kategori: 'bahasa'),

  // ═══════════ SEJARAH (15 soal) ═══════════
  SoalKuis(pertanyaan: 'Batavia adalah nama lama dari kota mana?', pilihan: ['Bandung', 'Surabaya', 'Semarang', 'Jakarta'], jawabanBenar: 3, penjelasan: 'Batavia adalah nama yang diberikan VOC Belanda untuk kota Jakarta pada masa kolonial abad ke-17.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'VOC adalah singkatan dari perusahaan dagang milik?', pilihan: ['Inggris', 'Portugis', 'Belanda', 'Spanyol'], jawabanBenar: 2, penjelasan: 'VOC (Vereenigde Oostindische Compagnie) adalah perusahaan dagang milik Belanda yang mendirikan Batavia.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Setu Babakan terletak di wilayah mana?', pilihan: ['Jakarta Utara', 'Jakarta Pusat', 'Jakarta Selatan', 'Jakarta Timur'], jawabanBenar: 2, penjelasan: 'Setu Babakan sebagai Perkampungan Budaya Betawi terletak di Srengseng Sawah, Jakarta Selatan.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Pada abad ke berapa VOC mendirikan Batavia?', pilihan: ['Abad ke-15', 'Abad ke-16', 'Abad ke-17', 'Abad ke-18'], jawabanBenar: 2, penjelasan: 'VOC mendirikan Batavia pada tahun 1619 di bawah pimpinan Jan Pieterszoon Coen, abad ke-17.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Masyarakat Betawi terbentuk dari percampuran etnis mana saja?', pilihan: ['Jawa dan Sunda saja', 'Melayu dan Arab saja', 'Berbagai etnis: Jawa, Sunda, Melayu, Tionghoa, Arab, dll', 'Pribumi Betawi murni'], jawabanBenar: 2, penjelasan: 'Betawi adalah masyarakat hasil akulturasi berbagai etnis yang datang ke Batavia: Jawa, Sunda, Melayu, Bali, Bugis, Tionghoa, Arab, dan Eropa.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Siapa gubernur jenderal VOC yang mendirikan Batavia?', pilihan: ['Herman Willem Daendels', 'Jan Pieterszoon Coen', 'Pieter Both', 'Van den Bosch'], jawabanBenar: 1, penjelasan: 'Jan Pieterszoon Coen adalah gubernur jenderal VOC yang mendirikan kota Batavia pada 30 Mei 1619.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Kota Tua Jakarta dulunya dikenal sebagai pusat?', pilihan: ['Pertanian', 'Perdagangan Batavia', 'Militer kolonial', 'Pendidikan'], jawabanBenar: 1, penjelasan: 'Kota Tua Jakarta adalah pusat perdagangan Batavia di masa VOC, dikelilingi tembok kota dan kanal.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Nama "Betawi" diyakini berasal dari kata?', pilihan: ['Nama suku asli', 'Batavia', 'Bahasa Arab', 'Nama raja lokal'], jawabanBenar: 1, penjelasan: 'Nama "Betawi" diyakini berasal dari penyebutan lokal terhadap nama "Batavia" yang kemudian berevolusi.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Museum Fatahillah berlokasi di?', pilihan: ['Monas', 'Kota Tua Jakarta', 'Menteng', 'Kebayoran'], jawabanBenar: 1, penjelasan: 'Museum Fatahillah atau Museum Sejarah Jakarta terletak di kawasan Kota Tua, bekas balai kota Batavia.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Kanal-kanal di Batavia dibangun terinspirasi dari kota mana?', pilihan: ['Paris', 'Amsterdam', 'London', 'Lisbon'], jawabanBenar: 1, penjelasan: 'Belanda membangun kanal di Batavia yang terinspirasi dari kota Amsterdam di Belanda, untuk transportasi dan drainase.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Tanggal berapa Jakarta merayakan hari jadinya?', pilihan: ['17 Agustus', '22 Juni', '1 Januari', '28 Oktober'], jawabanBenar: 1, penjelasan: 'HUT DKI Jakarta diperingati setiap 22 Juni, berdasarkan tanggal kemenangan Fatahillah atas Portugis tahun 1527.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Sebelum bernama Jakarta, kota ini pernah bernama?', pilihan: ['Jayakarta', 'Sunda Kelapa', 'Batavia', 'Semua benar'], jawabanBenar: 3, penjelasan: 'Jakarta telah berganti nama beberapa kali: Sunda Kelapa → Jayakarta → Batavia → Jakarta.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Pelabuhan tertua di Jakarta yang telah ada sejak era kerajaan Sunda disebut?', pilihan: ['Tanjung Priok', 'Sunda Kelapa', 'Muara Baru', 'Ancol'], jawabanBenar: 1, penjelasan: 'Sunda Kelapa adalah pelabuhan tua Jakarta yang sudah ada sejak era Kerajaan Sunda dan masih beroperasi hingga kini.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Fatahillah yang mengusir Portugis dari Sunda Kelapa berasal dari kesultanan?', pilihan: ['Mataram', 'Demak', 'Banten', 'Cirebon'], jawabanBenar: 1, penjelasan: 'Fatahillah adalah panglima dari Kesultanan Demak yang berhasil mengusir Portugis dari Sunda Kelapa pada 1527.', kategori: 'sejarah'),
  SoalKuis(pertanyaan: 'Apa nama jalan ikonik di Kota Tua Jakarta yang menjadi pusat wisata sejarah?', pilihan: ['Jalan Sudirman', 'Jalan Thamrin', 'Taman Fatahillah', 'Jalan Gajah Mada'], jawabanBenar: 2, penjelasan: 'Taman Fatahillah adalah alun-alun ikonik di Kota Tua Jakarta, dikelilingi bangunan bersejarah era kolonial.', kategori: 'sejarah'),

  // ═══════════ PAKAIAN (15 soal) ═══════════
  SoalKuis(pertanyaan: 'Pakaian adat wanita Betawi yang mendapat pengaruh Tionghoa disebut?', pilihan: ['Kebaya Encim', 'Kebaya Kartini', 'Baju Bodo', 'Kebaya Kutubaru'], jawabanBenar: 0, penjelasan: 'Kebaya Encim mendapat pengaruh dari budaya Tionghoa Peranakan dengan ciri khas bordir halus.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Pakaian adat pria Betawi untuk acara resmi disebut?', pilihan: ['Baju Beskap', 'Baju Sadariah', 'Baju Koko Polos', 'Jas Tutup'], jawabanBenar: 1, penjelasan: 'Baju Sadariah adalah pakaian adat pria Betawi berupa baju koko lengan panjang putih, celana batik, dan peci.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Ikat kepala khas yang dipakai pria Betawi disebut?', pilihan: ['Blangkon', 'Udeng', 'Destar', 'Sorban'], jawabanBenar: 1, penjelasan: '"Udeng" adalah ikat kepala khas yang dipakai pria Betawi dalam berbagai acara adat dan kesenian.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Warna yang dominan pada pakaian adat pengantin pria Betawi adalah?', pilihan: ['Biru tua', 'Hitam', 'Putih', 'Merah'], jawabanBenar: 2, penjelasan: 'Baju Sadariah pengantin pria Betawi didominasi warna putih sebagai simbol kesucian.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Selendang yang dipakai wanita Betawi biasanya diletakkan di?', pilihan: ['Kepala', 'Pinggang', 'Bahu/pundak', 'Pergelangan tangan'], jawabanBenar: 2, penjelasan: 'Selendang Betawi biasa diletakkan di bahu atau pundak sebagai aksesoris pelengkap kebaya.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Motif batik yang sering dipakai sebagai bawahan kebaya Betawi adalah?', pilihan: ['Batik Mega Mendung', 'Batik Pagi Sore', 'Batik Kawung', 'Batik Parang'], jawabanBenar: 1, penjelasan: 'Batik Pagi Sore adalah motif batik yang populer dipakai sebagai bawahan kebaya wanita Betawi.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Enkum atau Encim dalam konteks Kebaya Encim merujuk kepada?', pilihan: ['Nama pengrajin', 'Sebutan wanita Tionghoa Peranakan', 'Nama motif bordir', 'Bahan kain'], jawabanBenar: 1, penjelasan: '"Encim" adalah sebutan untuk wanita Tionghoa Peranakan yang lebih tua, yang pertama kali mempopulerkan gaya kebaya ini.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Tusuk konde yang dipakai wanita Betawi berfungsi untuk?', pilihan: ['Hiasan saja', 'Menahan sanggul rambut', 'Penanda status sosial', 'Simbol keagamaan'], jawabanBenar: 1, penjelasan: 'Tusuk konde digunakan untuk menahan sanggul rambut agar tetap rapi, sekaligus menjadi hiasan kepala.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Dalam pernikahan adat Betawi, pengantin wanita biasanya memakai rias wajah dengan ciri khas?', pilihan: ['Riasan minimalis natural', 'Riasan tebal dengan aksesoris lengkap', 'Tanpa riasan sama sekali', 'Riasan serba hitam'], jawabanBenar: 1, penjelasan: 'Pengantin wanita Betawi dirias tebal dengan aksesoris lengkap termasuk mahkota, kalung, dan gelang sebagai simbol kemewahan.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Celana yang dipakai dengan Baju Sadariah biasanya bermotif?', pilihan: ['Polos putih', 'Batik', 'Kotak-kotak', 'Bergaris'], jawabanBenar: 1, penjelasan: 'Baju Sadariah dipadukan dengan celana bermotif batik, biasanya batik Betawi atau batik Jawa klasik.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Bahan utama Kebaya Encim biasanya terbuat dari?', pilihan: ['Kain wol tebal', 'Kain tipis seperti sutra atau sifon', 'Kain denim', 'Kain katun kasar'], jawabanBenar: 1, penjelasan: 'Kebaya Encim dibuat dari kain tipis seperti sutra, sifon, atau organza yang nyaman di iklim tropis.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Aksesoris kepala pada pengantin pria Betawi biasanya berupa?', pilihan: ['Mahkota emas', 'Peci atau udeng', 'Helm adat', 'Sorban putih'], jawabanBenar: 1, penjelasan: 'Pengantin pria Betawi memakai peci haji atau udeng sebagai penutup kepala dalam upacara pernikahan.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Warna Kebaya Encim yang paling populer dan sering dipakai adalah?', pilihan: ['Hitam dan abu', 'Warna-warni cerah dengan bordir kontras', 'Coklat dan krem', 'Putih polos'], jawabanBenar: 1, penjelasan: 'Kebaya Encim identik dengan warna-warna cerah seperti pink, hijau muda, biru, dengan bordir yang kontras dan detail.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Dalam pakaian adat Betawi, "selop" merujuk kepada?', pilihan: ['Jenis ikat kepala', 'Alas kaki / sandal', 'Jenis selendang', 'Perhiasan tangan'], jawabanBenar: 1, penjelasan: '"Selop" adalah alas kaki tradisional berupa sandal yang dipakai melengkapi busana adat Betawi.', kategori: 'pakaian'),
  SoalKuis(pertanyaan: 'Perhiasan gelang yang dipakai wanita Betawi dalam acara adat biasanya terbuat dari?', pilihan: ['Plastik berwarna', 'Emas atau perak', 'Kayu ukir', 'Batu alam'], jawabanBenar: 1, penjelasan: 'Wanita Betawi dalam acara adat memakai gelang emas atau perak sebagai simbol kemakmuran dan keindahan.', kategori: 'pakaian'),
];

class QuizScreen extends StatefulWidget {
  final String kategori;

  const QuizScreen({super.key, required this.kategori});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<SoalKuis> _soalList;
  int _soalSekarang = 0;
  int _skor = 0;
  int? _pilihanDipilih;
  bool _sudahJawab = false;

  Color get _warnaUtama {
    switch (widget.kategori) {
      case 'kesenian': return const Color(0xFFE53935);
      case 'kuliner':  return const Color(0xFFFF7043);
      case 'bahasa':   return const Color(0xFF43A047);
      case 'sejarah':  return const Color(0xFF1E88E5);
      case 'pakaian':  return const Color(0xFF8E24AA);
      default:         return const Color(0xFFD32F2F);
    }
  }

  String get _judulKuis {
    switch (widget.kategori) {
      case 'kesenian': return 'Kuis Kesenian 🎭';
      case 'kuliner':  return 'Kuis Kuliner 🍜';
      case 'bahasa':   return 'Kuis Bahasa 💬';
      case 'sejarah':  return 'Kuis Sejarah 📜';
      case 'pakaian':  return 'Kuis Pakaian 👗';
      default:         return 'All Categories Quiz 🏆';
    }
  }

  @override
  void initState() {
    super.initState();
    _initSoal();
  }

  void _initSoal() {
    List<SoalKuis> filtered;

    if (widget.kategori == 'semua') {
      filtered = List.from(bankSoal)..shuffle(Random());
      filtered = filtered.take(20).toList();
    } else {
      filtered = bankSoal.where((s) => s.kategori == widget.kategori).toList()
        ..shuffle(Random());
    }

    _soalList = filtered;
  }

  void _pilihJawaban(int index) {
    if (_sudahJawab) return;
    setState(() {
      _pilihanDipilih = index;
      _sudahJawab = true;
      if (index == _soalList[_soalSekarang].jawabanBenar) _skor++;
    });
  }

  void _soalBerikutnya() {
    if (_soalSekarang < _soalList.length - 1) {
      setState(() {
        _soalSekarang++;
        _pilihanDipilih = null;
        _sudahJawab = false;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HasilQuizScreen(
            skor: _skor,
            total: _soalList.length,
            warna: _warnaUtama,
            judulKuis: _judulKuis,
            kategori: widget.kategori,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final soal = _soalList[_soalSekarang];
    final progress = (_soalSekarang + 1) / _soalList.length;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F4F0),
      appBar: AppBar(
        backgroundColor: _warnaUtama,
        foregroundColor: Colors.white,
        title: Text(_judulKuis, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const Text('⭐', style: TextStyle(fontSize: 14)),
                const SizedBox(width: 4),
                Text('$_skor', style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
              ],
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          // Progress bar
          Container(
            color: _warnaUtama,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Soal ${_soalSekarang + 1} dari ${_soalList.length}',
                      style: TextStyle(color: Colors.white.withOpacity(0.85), fontSize: 13),
                    ),
                    Text(
                      '${(progress * 100).toInt()}%',
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                    minHeight: 8,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: _warnaUtama.withOpacity(0.1),
                          blurRadius: 16,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: _warnaUtama.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'Pertanyaan ${_soalSekarang + 1}',
                            style: TextStyle(color: _warnaUtama, fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          soal.pertanyaan,
                          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700, height: 1.4),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    'Pilih jawaban:',
                    style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.4), fontWeight: FontWeight.w600),
                  ),

                  const SizedBox(height: 10),

                  ...List.generate(soal.pilihan.length, (index) {
                    return _PilihanCard(
                      label: soal.pilihan[index],
                      index: index,
                      pilihanDipilih: _pilihanDipilih,
                      jawabanBenar: soal.jawabanBenar,
                      sudahJawab: _sudahJawab,
                      warna: _warnaUtama,
                      onTap: () => _pilihJawaban(index),
                    );
                  }),

                  if (_sudahJawab) ...[
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: _pilihanDipilih == soal.jawabanBenar
                            ? const Color(0xFFE8F5E9)
                            : const Color(0xFFFFEBEE),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: _pilihanDipilih == soal.jawabanBenar ? Colors.green : Colors.red,
                          width: 1.5,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _pilihanDipilih == soal.jawabanBenar ? '✅' : '❌',
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _pilihanDipilih == soal.jawabanBenar ? 'Jawaban Benar!' : 'Jawaban Salah!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: _pilihanDipilih == soal.jawabanBenar
                                        ? Colors.green.shade700
                                        : Colors.red.shade700,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  soal.penjelasan,
                                  style: const TextStyle(fontSize: 13, height: 1.5, color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                  const SizedBox(height: 24),

                  if (_sudahJawab)
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _soalBerikutnya,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _warnaUtama,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          elevation: 0,
                        ),
                        child: Text(
                          _soalSekarang < _soalList.length - 1 ? 'Soal Berikutnya →' : 'Lihat Hasil 🎯',
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PilihanCard extends StatelessWidget {
  final String label;
  final int index;
  final int? pilihanDipilih;
  final int jawabanBenar;
  final bool sudahJawab;
  final Color warna;
  final VoidCallback onTap;

  static const _huruf = ['A', 'B', 'C', 'D'];

  const _PilihanCard({
    required this.label,
    required this.index,
    required this.pilihanDipilih,
    required this.jawabanBenar,
    required this.sudahJawab,
    required this.warna,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color bgColor = Colors.white;
    Color borderColor = Colors.grey.shade200;
    Color textColor = Colors.black87;
    Color badgeColor = Colors.grey.shade100;
    Color badgeTextColor = Colors.black54;

    if (sudahJawab) {
      if (index == jawabanBenar) {
        bgColor = const Color(0xFFE8F5E9);
        borderColor = Colors.green;
        textColor = Colors.green.shade800;
        badgeColor = Colors.green;
        badgeTextColor = Colors.white;
      } else if (index == pilihanDipilih) {
        bgColor = const Color(0xFFFFEBEE);
        borderColor = Colors.red;
        textColor = Colors.red.shade800;
        badgeColor = Colors.red;
        badgeTextColor = Colors.white;
      }
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: borderColor, width: 1.5),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8, offset: const Offset(0, 2)),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(color: badgeColor, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  _huruf[index],
                  style: TextStyle(color: badgeTextColor, fontWeight: FontWeight.w800, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(label, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: textColor)),
            ),
            if (sudahJawab && index == jawabanBenar)
              const Text('✓', style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.w900)),
            if (sudahJawab && index == pilihanDipilih && index != jawabanBenar)
              const Text('✗', style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900)),
          ],
        ),
      ),
    );
  }
}

class HasilQuizScreen extends StatelessWidget {
  final int skor;
  final int total;
  final Color warna;
  final String judulKuis;
  final String kategori;

  const HasilQuizScreen({
    super.key,
    required this.skor,
    required this.total,
    required this.warna,
    required this.judulKuis,
    required this.kategori,
  });

  @override
  Widget build(BuildContext context) {
    final persen = (skor / total * 100).toInt();

    final String emoji;
    final String pesan;

    if (persen >= 80) {
      emoji = '🏆';
      pesan = 'Luar biasa! Kamu ahli budaya Betawi!';
    } else if (persen >= 60) {
      emoji = '👏';
      pesan = 'Bagus! Pengetahuanmu lumayan nih!';
    } else if (persen >= 40) {
      emoji = '📚';
      pesan = 'Lumayan! Yuk belajar lebih lagi!';
    } else {
      emoji = '💪';
      pesan = 'Jangan nyerah! Coba lagi yuk!';
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF8F4F0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(color: warna.withOpacity(0.15), blurRadius: 24, offset: const Offset(0, 8)),
                  ],
                ),
                child: Column(
                  children: [
                    Text(emoji, style: const TextStyle(fontSize: 72)),
                    const SizedBox(height: 8),
                    Text(
                      judulKuis,
                      style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.4)),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      '$skor / $total',
                      style: TextStyle(fontSize: 52, fontWeight: FontWeight.w900, color: warna),
                    ),
                    Text('Jawaban Benar', style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.4))),
                    const SizedBox(height: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: skor / total,
                        backgroundColor: Colors.grey.shade200,
                        valueColor: AlwaysStoppedAnimation<Color>(warna),
                        minHeight: 10,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      pesan,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, height: 1.4),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => QuizScreen(kategori: kategori)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: warna,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    elevation: 0,
                  ),
                  child: const Text('Coba Lagi 🔄', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    side: BorderSide(color: warna),
                  ),
                  child: Text(
                    'Kembali ke Home 🏠',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: warna),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}