import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class GamesHubScreen extends StatelessWidget {
  const GamesHubScreen({super.key});

  static const Color _warnaUtama = Color(0xFFD32F2F);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F4F0),
      body: CustomScrollView(
        slivers: [

          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.fromLTRB(24, 56, 24, 28),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFD32F2F), Color(0xFFFF6F00)],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back button
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.arrow_back, color: Colors.white, size: 20),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Mini Games 🎮',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Uji pengetahuan budaya Betawi kamu!',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.85),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 28)),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _SectionLabel(label: 'Main Sekarang', warna: _warnaUtama),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 12)),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _FeaturedGameCard(
                emoji: '🏆',
                judul: 'All Categories Quiz',
                deskripsi: 'Campuran semua soal dari semua kategori budaya Betawi. Total 20 soal acak!',
                warna: _warnaUtama,
                totalSoal: 20,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizScreen(kategori: 'semua'),
                  ),
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 28)),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _SectionLabel(label: 'Per Kategori', warna: _warnaUtama),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 12)),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final game = _daftarGame[index];
                  return _GameCard(
                    game: game,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(kategori: game['kategori']!),
                      ),
                    ),
                  );
                },
                childCount: _daftarGame.length,
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }
}

const List<Map<String, String>> _daftarGame = [
  {'emoji': '🎭', 'judul': 'Kuis Kesenian', 'kategori': 'kesenian', 'warna': 'E53935', 'soal': '15'},
  {'emoji': '🍜', 'judul': 'Kuis Kuliner', 'kategori': 'kuliner', 'warna': 'FF7043', 'soal': '15'},
  {'emoji': '💬', 'judul': 'Kuis Bahasa', 'kategori': 'bahasa', 'warna': '43A047', 'soal': '15'},
  {'emoji': '📜', 'judul': 'Kuis Sejarah', 'kategori': 'sejarah', 'warna': '1E88E5', 'soal': '15'},
  {'emoji': '👗', 'judul': 'Kuis Pakaian', 'kategori': 'pakaian', 'warna': '8E24AA', 'soal': '15'},
];

class _FeaturedGameCard extends StatelessWidget {
  final String emoji;
  final String judul;
  final String deskripsi;
  final Color warna;
  final int totalSoal;
  final VoidCallback onTap;

  const _FeaturedGameCard({
    required this.emoji,
    required this.judul,
    required this.deskripsi,
    required this.warna,
    required this.totalSoal,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [warna, warna.withOpacity(0.7)],
          ),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: warna.withOpacity(0.4),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '$totalSoal Soal Acak',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    judul,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    deskripsi,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.85),
                      fontSize: 12,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Main Sekarang →',
                      style: TextStyle(
                        color: warna,
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Text(emoji, style: const TextStyle(fontSize: 64)),
          ],
        ),
      ),
    );
  }
}

class _GameCard extends StatelessWidget {
  final Map<String, String> game;
  final VoidCallback onTap;

  const _GameCard({required this.game, required this.onTap});

  Color get _warna => Color(int.parse('FF${game['warna']}', radix: 16));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: _warna.withOpacity(0.15),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: _warna.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(game['emoji']!, style: const TextStyle(fontSize: 26)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    game['judul']!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: _warna.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '${game['soal']} soal',
                          style: TextStyle(
                            color: _warna,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String label;
  final Color warna;

  const _SectionLabel({required this.label, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 22,
          decoration: BoxDecoration(
            color: warna,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.3,
          ),
        ),
      ],
    );
  }
}