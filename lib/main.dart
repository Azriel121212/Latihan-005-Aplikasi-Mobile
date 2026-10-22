import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Ditambah const biar lebih optimal
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tugas Mobile Azriel",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          leading: const Icon(Icons.code, color: Colors.white), // Tambahan ikon di kiri atas
        ),
        body: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              fontSize: 28, // Teks diperbesar
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ),
        // Tambahan tombol melayang di sudut kanan bawah
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Tombol dipencet!");
          },
          backgroundColor: Colors.blueAccent,
          child: const Icon(Icons.thumb_up, color: Colors.white),
        ),
      ),
    );
  }
}