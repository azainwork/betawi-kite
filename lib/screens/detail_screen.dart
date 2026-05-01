import 'package:flutter/material.dart';
import '../models/kategori_item.dart';

class DetailScreen extends StatelessWidget {
  final KategoriItem kategori;

  const DetailScreen({super.key, required this.kategori});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F4F0),
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: kategori.warna,
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      kategori.imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [kategori.warna, kategori.warna.withOpacity(0.6)],
                          ),
                        ),
                        child: Center(
                          child: Text(kategori.emoji, style: const TextStyle(fontSize: 100)),
                        ),
                      ),
                    ),
                    // Gradient overlay
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                          stops: const [0.5, 1.0],
                        ),
                      ),
                    ),
                    // Title di bawah
                    Positioned(
                      bottom: 24,
                      left: 24,
                      right: 24,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            kategori.emoji,
                            style: const TextStyle(fontSize: 36),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            kategori.judul,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              letterSpacing: -0.5,
                            ),
                          ),
                          Text(
                            kategori.deskripsi,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.85),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ── KONTEN ──
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section title
                  Row(
                    children: [
                      Container(
                        width: 4,
                        height: 22,
                        decoration: BoxDecoration(
                          color: kategori.warna,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Tentang ${kategori.judul}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  ..._buildKonten(kategori),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildKonten(KategoriItem kategori) {
    final Map<String, List<Map<String, String>>> konten = {
      'Kesenian': [
        {'judul': 'Tari Topeng', 'isi': 'Tari Topeng adalah tarian tradisional Betawi yang menggunakan topeng sebagai properti utama. Biasa ditampilkan dalam upacara adat dan hiburan rakyat.'},
        {'judul': 'Ondel-Ondel', 'isi': 'Boneka raksasa khas Betawi setinggi sekitar 2,5 meter. Dulunya dipercaya sebagai penolak bala, kini menjadi ikon budaya Jakarta.'},
        {'judul': 'Gambang Kromong', 'isi': 'Musik tradisional Betawi yang memadukan alat musik Tionghoa dan Melayu. Biasa mengiringi pertunjukan lenong dan tari Betawi.'},
      ],
      'Kuliner': [
        {'judul': 'Soto Betawi', 'isi': 'Soto khas Betawi dengan kuah santan atau susu yang gurih. Berisi daging sapi, jeroan, tomat, dan kentang goreng.'},
        {'judul': 'Kerak Telor', 'isi': 'Makanan dari beras ketan putih, telur bebek, ebi, dan kelapa sangrai. Dimasak dengan cara unik — wajan dibalik menghadap bara api.'},
        {'judul': 'Bir Pletok', 'isi': 'Minuman herbal dari rempah-rempah seperti jahe, serai, dan kayu secang. Warnanya merah segar dan menyehatkan.'},
      ],
      'Bahasa': [
        {'judul': 'Aye / Gue', 'isi': '"Aye" adalah kata ganti orang pertama yang lebih tradisional, sementara "gue" lebih umum dipakai dan sudah menyebar ke seluruh Jakarta.'},
        {'judul': 'Ente / Lu', 'isi': 'Kata ganti orang kedua (kamu). Berasal dari bahasa Arab (anta) yang diserap ke dalam dialek Betawi.'},
        {'judul': 'Nyang / Yang', 'isi': 'Kata penghubung artinya "yang". Contoh: "Nyang bener aje!" = "Yang benar saja!"'},
      ],
      'Sejarah': [
        {'judul': 'Asal Usul', 'isi': 'Betawi berasal dari kata "Batavia". Masyarakatnya terbentuk dari percampuran berbagai etnis yang datang ke Batavia sejak abad ke-17.'},
        {'judul': 'Era Batavia', 'isi': 'VOC Belanda mendirikan Batavia sebagai pusat perdagangan Asia, menarik pendatang dari Jawa, Sunda, Melayu, Bali, Bugis, Tionghoa, hingga Arab.'},
        {'judul': 'Setu Babakan', 'isi': 'Kini tersisa Perkampungan Budaya Betawi di Setu Babakan yang dijadikan kawasan pelestarian budaya Betawi.'},
      ],
      'Pakaian': [
        {'judul': 'Baju Sadariah', 'isi': 'Pakaian adat pria berupa baju koko lengan panjang putih, celana batik, dan peci. Dipakai dalam acara keagamaan dan pernikahan.'},
        {'judul': 'Kebaya Encim', 'isi': 'Pakaian wanita yang mendapat pengaruh budaya Tionghoa Peranakan. Kebaya tipis berbordir dengan kain batik sebagai bawahan.'},
        {'judul': 'Aksesoris', 'isi': 'Wanita Betawi memakai selendang, kalung, dan tusuk konde. Pria memakai ikat kepala "udeng" atau peci haji.'},
      ],
      'Mini Games': [
        {'judul': 'Kuis Budaya', 'isi': 'Uji pengetahuanmu tentang budaya Betawi dengan menjawab pertanyaan pilihan ganda. Semakin banyak benar, semakin tinggi skormu!'},
        {'judul': 'Tebak Gambar', 'isi': 'Lihat gambar, tebak nama makanan, tarian, atau benda khas Betawi. Latih visual memorimu!'},
        {'judul': 'Susun Kata', 'isi': 'Susun huruf-huruf acak menjadi kata dalam bahasa Betawi. Seru dan menambah kosakata!'},
      ],
    };

    final items = konten[kategori.judul] ?? [];

    return items.asMap().entries.map((entry) {
      final index = entry.key;
      final item = entry.value;

      return Container(
        margin: const EdgeInsets.only(bottom: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: kategori.warna.withOpacity(0.08),
              blurRadius: 16,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  width: 6,
                  color: kategori.warna,
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // Nomor urut
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                color: kategori.warna,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  '${index + 1}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              item['judul']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          item['isi']!,
                          style: const TextStyle(
                            fontSize: 13,
                            height: 1.6,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }).toList();
  }
}