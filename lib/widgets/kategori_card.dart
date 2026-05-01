import 'package:flutter/material.dart';
import '../models/kategori_item.dart';
import '../screens/detail_screen.dart';
import '../screens/games_hub_screen.dart';

class KategoriCard extends StatelessWidget {
  final KategoriItem kategori;

  const KategoriCard({super.key, required this.kategori});

  // Tambah helper function ini di bawah class KategoriCard:
  Route _buildRoute(Widget page, KategoriItem kategori) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionDuration: const Duration(milliseconds: 800),
      reverseTransitionDuration: Duration.zero, // ← balik langsung, no transition
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return _KategoriSplashTransition(
          animation: animation,
          kategori: kategori,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (kategori.judul == 'Mini Games') {
          Navigator.push(context, _buildRoute(const GamesHubScreen(), kategori));
        } else {
          Navigator.push(context, _buildRoute(DetailScreen(kategori: kategori), kategori));
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: kategori.warna.withOpacity(0.4),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
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
                      colors: [
                        kategori.warna,
                        kategori.warna.withOpacity(0.6),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      kategori.emoji,
                      style: const TextStyle(fontSize: 52),
                    ),
                  ),
                ),
              ),

              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.75),
                    ],
                    stops: const [0.4, 1.0],
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        kategori.emoji,
                        style: const TextStyle(fontSize: 22),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        kategori.judul,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.3,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        kategori.deskripsi,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.75),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: kategori.warna,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    kategori.judul[0],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w900,
                    ),
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

class _KategoriSplashTransition extends StatelessWidget {
  final Animation<double> animation;
  final KategoriItem kategori;
  final Widget child;

  const _KategoriSplashTransition({
    required this.animation,
    required this.kategori,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        final value = animation.value;

        // Splash tampil dari 0.0 - 0.85, konten langsung muncul setelahnya
        final showSplash = value < 0.85;

        final splashOpacity = value < 0.75
            ? 1.0                                          // full opacity
            : ((0.85 - value) / 0.1).clamp(0.0, 1.0);    // fade out cepat di akhir

        return Stack(
          children: [
            // Halaman tujuan — langsung tampil tanpa fade waktu splash selesai
            child,

            // Splash overlay
            if (showSplash)
              Opacity(
                opacity: splashOpacity,
                child: Container(
                  color: kategori.warna, // ← solid, no opacity
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(0.4),
                              width: 2.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              kategori.emoji,
                              style: const TextStyle(fontSize: 56),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          kategori.judul,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.5,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          kategori.deskripsi,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 28),
                        // Loading bar
                        SizedBox(
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: LinearProgressIndicator(
                              value: (value / 0.85).clamp(0.0, 1.0),
                              backgroundColor: Colors.white.withOpacity(0.2),
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                              minHeight: 4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}