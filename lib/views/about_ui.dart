import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ผู้จัดทำ'),
      ),
      body: const Center(
        child: Text(
          'ข้อมูลผู้พัฒนาแอป',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

