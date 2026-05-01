import 'package:flutter/material.dart';

class KategoriItem {
  final String emoji;
  final String judul;
  final String deskripsi;
  final Color warna;
  final String imagePath;

  const KategoriItem({
    required this.emoji,
    required this.judul,
    required this.deskripsi,
    required this.warna,
    required this.imagePath,
  });
}

final List<KategoriItem> daftarKategori = [
  KategoriItem(emoji: '🎭', judul: 'Kesenian', deskripsi: 'Tari, musik, dan seni khas Betawi', warna: const Color(0xFFE53935), imagePath: 'assets/images/kesenian.jpg'),
  KategoriItem(emoji: '🍜', judul: 'Kuliner', deskripsi: 'Makanan dan minuman tradisional', warna: const Color(0xFFFF7043), imagePath: 'assets/images/kuliner.jpg'),
  KategoriItem(emoji: '💬', judul: 'Bahasa', deskripsi: 'Kosakata dan ungkapan Betawi', warna: const Color(0xFF43A047), imagePath: 'assets/images/bahasa.jpeg'),
  KategoriItem(emoji: '📜', judul: 'Sejarah', deskripsi: 'Asal-usul dan perjalanan budaya', warna: const Color(0xFF1E88E5), imagePath: 'assets/images/sejarah.jpg'),
  KategoriItem(emoji: '👗', judul: 'Pakaian', deskripsi: 'Busana adat khas Betawi', warna: const Color(0xFF8E24AA), imagePath: 'assets/images/pakaian.png'),
  KategoriItem(emoji: '🎮', judul: 'Mini Games', deskripsi: 'Uji pengetahuan budaya Betawi', warna: const Color(0xFF00897B), imagePath: 'assets/images/gams.jfif'),
];