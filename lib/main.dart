import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nyobain Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(), // Pisah ke class baru biar SnackBar bisa muncul
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tugas Mobile Azriel",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: const Icon(Icons.code, color: Colors.white),
      ),
      body: Center(
        // Pake Column biar bisa nyusun Ikon dan Teks berjejer ke bawah
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.android, 
              size: 100, 
              color: Colors.green, // Ikon robot hijau khas Android
            ),
            SizedBox(height: 20),
            Text(
              "Hello World",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Semangat Push Harian!",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Bikin notifikasi pop-up pas tombol dipencet
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('yntks 🚀', style: TextStyle(fontSize: 16)),
              backgroundColor: Colors.green,
              duration: Duration(seconds: 2),
            ),
          );
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.thumb_up, color: Colors.white),
      ),
    );
  }
}