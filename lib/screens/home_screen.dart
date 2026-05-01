import 'package:flutter/material.dart';
import '../models/kategori_item.dart';
import '../widgets/kategori_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  colors: [
                    Color(0xFFD32F2F),
                    Color(0xFFFF6F00),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Betawi Kite',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          letterSpacing: -0.5,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text('🎭', style: TextStyle(fontSize: 22)),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'Halo, Sobat Betawi! 👋',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Yuk eksplor budaya Betawi yang kaya & seru!',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.85),
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    children: [
                      _StatChip(label: '6 Kategori', emoji: '📚'),
                      const SizedBox(width: 8),
                      _StatChip(label: '3 Mini Games', emoji: '🎮'),
                      const SizedBox(width: 8),
                      _StatChip(label: 'Free!', emoji: '✨'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 28)),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 4,
                    height: 22,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD32F2F),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Pilih Kategori',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.3,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
                childAspectRatio: 0.85, // lebih tinggi dari lebar
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => KategoriCard(kategori: daftarKategori[index]),
                childCount: daftarKategori.length,
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 32)),

          SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Made with ❤️ untuk budaya Betawi',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                  fontSize: 12,
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  final String label;
  final String emoji;

  const _StatChip({required this.label, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 12)),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}