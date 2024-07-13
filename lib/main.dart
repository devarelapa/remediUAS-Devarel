import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REMIDI MPL',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar mahasiswa dengan nama dan NIM
    final List<Map<String, String>> mahasiswa = [
      {'nama': 'LINDA SENJAANGGRAENI', 'nim': 'STI202102433'}, // Nomor absen tepat di atas
      {'nama': 'YEZA YOFANKA', 'nim': 'STI202102443'}, // Nomor absen tepat di atas
      {'nama': 'DWI SEPTI LUTFIANA', 'nim': 'STI202102449'}, // Nomor absen tepat di atas
      {'nama': 'NANDA WIASTI ', 'nim': 'STI202102461'}, // Nomor absen tepat di atas
      {'nama': 'ADHITYA PRAMUDITA RAMADHAN ', 'nim': 'STI202102470'}, // Nomor absen tepat di atas
      {'nama': 'DEVAREL ALBANY PUTRA ALAMSYAH', 'nim': 'STI202102472'}, // Anda
      {'nama': 'DIDIT SYAWALUDIN ', 'nim': 'STI202102476'}, // Nomor absen tepat di bawah
      {'nama': 'ARSYAD MAULLANA', 'nim': 'STI202102477'}, // Nomor absen tepat di bawah
      {'nama': 'REZA YULI SANTOSA', 'nim': 'STI202102480'}, // Nomor absen tepat di bawah
      {'nama': 'VIRDA ROMADANI', 'nim': 'STI202102493'}, // Nomor absen tepat di bawah
      {'nama': 'MUHAMMAD RIFKI', 'nim': 'STI202102498'}, // Nomor absen tepat di bawah
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Mahasiswa'),
      ),
      body: ListView.builder(
        itemCount: mahasiswa.length,
        itemBuilder: (context, index) {
          final item = mahasiswa[index];
          final isNamaSaya = item['nama'] == 'DEVAREL ALBANY PUTRA ALAMSYAH'; // Ganti dengan nama Anda

          return Container(
            color: isNamaSaya ? Colors.lightGreen : Colors.white, // Warna latar belakang
            child: ListTile(
              title: Text(item['nama']!),
              subtitle: Text(item['nim']!),
            ),
          );
        },
      ),
    );
  }
}
