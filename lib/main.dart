import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart'; // Impor device_preview
import 'screens/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Ubah ke `false` jika tidak ingin menggunakan pratinjau
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true, // Untuk mengikuti ukuran layar perangkat
      locale: DevicePreview.locale(context), // Untuk pratinjau lokal perangkat
      builder: DevicePreview.appBuilder, // Untuk menerapkan pratinjau perangkat
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
