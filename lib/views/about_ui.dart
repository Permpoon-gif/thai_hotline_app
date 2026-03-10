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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("สายด่วน THAILAND"),
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/images2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  "ผู้จัดทำ",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFF176),
                    shadows: [
                      Shadow(
                        blurRadius: 20,
                        color: Colors.yellowAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 40,
                        color: Colors.orangeAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 8,
                        color: Colors.black,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 140,
                  height: 90,
                  color: Colors.grey[300],
                  child: Image.asset(
                    "assets/images/p2.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "มหาวิทยาลัยเอเชียอาคเนย์",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFFFF176),
                    shadows: [
                      Shadow(
                        blurRadius: 20,
                        color: Colors.yellowAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 40,
                        color: Colors.orangeAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 8,
                        color: Colors.black,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage("assets/images/p1.png"),
                ),
                const SizedBox(height: 50),
                const Text(
                  "รหัสนักศึกษา : 6619410020",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFFFF176),
                    shadows: [
                      Shadow(
                        blurRadius: 20,
                        color: Colors.yellowAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 40,
                        color: Colors.orangeAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 8,
                        color: Colors.black,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "ชื่อ-สกุลนักศึกษา : นาย เพิ่มพูล ชั้วถ่อน",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFFFF176),
                    shadows: [
                      Shadow(
                        blurRadius: 20,
                        color: Colors.yellowAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 40,
                        color: Colors.orangeAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 8,
                        color: Colors.black,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "ชั้นปีนักศึกษา : ปี3",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFFFF176),
                    shadows: [
                      Shadow(
                        blurRadius: 20,
                        color: Colors.yellowAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 40,
                        color: Colors.orangeAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 8,
                        color: Colors.black,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "ชื่อสาขาวิชา : วิศวะคอมพิวเตอร์",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFFFF176),
                    shadows: [
                      Shadow(
                        blurRadius: 20,
                        color: Colors.yellowAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 40,
                        color: Colors.orangeAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 8,
                        color: Colors.black,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "ชื่อคณะ : วิศวกรรมศาสตร์",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFFFF176),
                    shadows: [
                      Shadow(
                        blurRadius: 20,
                        color: Colors.yellowAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 40,
                        color: Colors.orangeAccent,
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 8,
                        color: Colors.black,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
