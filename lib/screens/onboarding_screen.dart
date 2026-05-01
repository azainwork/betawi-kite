import 'package:flutter/material.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _halamanSekarang = 0;

  final List<_OnboardingData> _halaman = [
    _OnboardingData(
      emoji: '🎭',
      judul: 'Selamat Datang!',
      deskripsi: 'Kenali budaya Betawi yang kaya — mulai dari kesenian, kuliner, bahasa, hingga sejarahnya.',
      warna: const Color(0xFFD32F2F),
      warnaGradien: const Color(0xFFFF6F00),
    ),
    _OnboardingData(
      emoji: '📚',
      judul: 'Belajar Sambil Seru',
      deskripsi: 'Jelajahi 6 kategori budaya Betawi dengan konten yang menarik dan mudah dipahami.',
      warna: const Color(0xFF1E88E5),
      warnaGradien: const Color(0xFF00ACC1),
    ),
    _OnboardingData(
      emoji: '🎮',
      judul: 'Uji Pengetahuanmu!',
      deskripsi: 'Main kuis seru dengan 75+ soal dari berbagai kategori. Siapa yang paling tahu Betawi?',
      warna: const Color(0xFF00897B),
      warnaGradien: const Color(0xFF43A047),
    ),
  ];

  void _nextPage() {
    if (_halamanSekarang < _halaman.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      _keHomeScreen();
    }
  }

  void _keHomeScreen() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const HomeScreen(),
        transitionsBuilder: (_, anim, __, child) =>
            FadeTransition(opacity: anim, child: child),
        transitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView — swipeable pages
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _halamanSekarang = index),
            itemCount: _halaman.length,
            itemBuilder: (context, index) {
              return _OnboardingPage(data: _halaman[index]);
            },
          ),

          // Bottom controls — di atas semua halaman
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(28, 20, 28, 48),
              child: Column(
                children: [
                  // Dot indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(_halaman.length, (index) {
                      final isActive = index == _halamanSekarang;
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: isActive ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: isActive
                              ? Colors.white
                              : Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 32),

                  // Tombol next / mulai
                  Row(
                    children: [
                      // Skip (hanya tampil bukan halaman terakhir)
                      if (_halamanSekarang < _halaman.length - 1)
                        TextButton(
                          onPressed: _keHomeScreen,
                          child: Text(
                            'Lewati',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                      const Spacer(),

                      // Next / Mulai button
                      GestureDetector(
                        onTap: _nextPage,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 12,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Text(
                            _halamanSekarang < _halaman.length - 1
                                ? 'Lanjut →'
                                : 'Mulai Eksplorasi! 🚀',
                            style: TextStyle(
                              color: _halaman[_halamanSekarang].warna,
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Data model tiap halaman onboarding
class _OnboardingData {
  final String emoji;
  final String judul;
  final String deskripsi;
  final Color warna;
  final Color warnaGradien;

  const _OnboardingData({
    required this.emoji,
    required this.judul,
    required this.deskripsi,
    required this.warna,
    required this.warnaGradien,
  });
}

// Widget satu halaman onboarding
class _OnboardingPage extends StatelessWidget {
  final _OnboardingData data;

  const _OnboardingPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [data.warna, data.warnaGradien],
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28, 60, 28, 160),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Ilustrasi emoji besar
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    data.emoji,
                    style: const TextStyle(fontSize: 80),
                  ),
                ),
              ),

              const SizedBox(height: 48),

              Text(
                data.judul,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 16),

              Text(
                data.deskripsi,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.88),
                  fontSize: 16,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}