import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Mobile Programming',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          // KETENTUAN A: Ganti Title AppBar
          title: const Text('UTS Mobile Programming'),
        ),
        body: Column(
          children: [
            // Header (Nama dan NPM)
            Container(
              // KETENTUAN B: Ubah warna Padding menjadi kuning
              color: Colors.yellow[300], 
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // KETENTUAN C & D: Nama Lengkap dan 1 Warna
                  Text(
                    'Ega Diana Hanifah', // <<< GANTI DENGAN NAMA LENGKAP
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red, // Warna Merah
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'NPM: 122005007', // <<< GANTI DENGAN NPM ANDA
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.red, // Warna yang sama
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            
            // Konten (Gambar)
            Expanded(
              // KETENTUAN E: Ubah gambar menjadi foto mahasiswa
              child: Image.asset(
                'assets/foto_saya.jpg.webp', // <<< PASTIKAN NAMA FILE SAMA
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}