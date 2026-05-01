import 'package:flutter/material.dart';
import '../models/kategori_item.dart';
import '../screens/detail_screen.dart';
import '../screens/games_hub_screen.dart';

class KategoriCard extends StatelessWidget {
  final KategoriItem kategori;

  const KategoriCard({super.key, required this.kategori});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (kategori.judul == 'Mini Games') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GamesHubScreen()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailScreen(kategori: kategori)),
          );
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