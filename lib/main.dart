import 'dart:math';

import 'package:material_ui/material_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

Widget _fasilitas(IconData icon, String label) {
  return Expanded(
    child: Column(
      children: [
        Icon(icon, size: 50, color: Colors.blue),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w300),
        ),
      ],
    ),
  );
}

Widget _kamar(String imagePath, String label) {
  return Expanded(
    child: Column(
      children: [
        Image.asset(imagePath, width: 250, height: 250),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w300),
        ),
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      home: const Homepage(),
    );
  }
}

class Homeheader extends StatelessWidget {
  const Homeheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Header biru melengkung, menempel di atas
      width: double.infinity,
      height: 250,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: Colors.white, size: 28),
                  const SizedBox(width: 8),
                  // Nama branding Anugerah Co & Living disamping logo
                  Text(
                    'Anugerah Co & Living',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Datang!',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
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

// Body menampilkan gambar kos Anugerah 3 lantai
class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 135),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Gambar kos dan alamat dari anugerah kos
              Align(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/Image_kos_anugerah_3_lantai.jpg',
                        width: 375,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Jl.Affandi no.8 Mrican, Caturtunggal,\nDepok, Sleman, Yogyakarta',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        // 2. Judul pada bagian fasilitas anugerah co-living
                        Text(
                          'Fasilitas Anugerah Co & Living',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Icon(
                          Icons.info_outline,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  // 3. Fasilitas yang disediakan dan beserta icon dari fasilitas tersebut
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _fasilitas(Icons.wifi, 'Free Wifi 300Mbps'),
                        _fasilitas(Icons.ac_unit_rounded, 'AC Full'),
                        _fasilitas(Icons.bathtub, 'Kamar Mandi Dalam'),
                        _fasilitas(Icons.local_parking, 'Parkir Luas'),
                      ],
                    ),
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        // 2. Judul pada bagian fasilitas anugerah co-living
                        Text(
                          'Pilihan Kamar Anugerah',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Icon(
                          Icons.bed,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  // 3. Fasilitas yang disediakan dan beserta icon dari fasilitas tersebut
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _kamar(
                          './assets/images/Image_interior_deluxe.jpg',
                          'Free Wifi 300Mbps',
                        ),
                      ],
                    ),
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

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [const Homeheader(), const Homebody()]),
    );
  }
}
