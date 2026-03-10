import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/introduction_call_ui.dart';

class SubBHomeUi extends StatefulWidget {
  const SubBHomeUi({super.key});

  @override
  State<SubBHomeUi> createState() => _SubBHomeUiState();
}

class _SubBHomeUiState extends State<SubBHomeUi> {
  List<Map<String, String>> hotline = [
    {"img": "assets/images/g1.png", "num": "191", "name": "เหตุด่วนเหตุร้าย"},
    {
      "img": "assets/images/g2.png",
      "num": "199",
      "name": "แจ้งไฟไหม้สัตว์เข้าบ้าน"
    },
    {
      "img": "assets/images/g3.png",
      "num": "1192",
      "name": "สายด่วนรถหาย(ตำรวจแห่งชาติ)"
    },
    {"img": "assets/images/g4.png", "num": "1196", "name": "อุบัติเหตุทางน้ำ"},
    {"img": "assets/images/g5.png", "num": "1300", "name": "แจ้งคนหาย"},
    {
      "img": "assets/images/g6.png",
      "num": "1356",
      "name": "ศูนย์ปลอดภัยคมนาคม"
    },
    {"img": "assets/images/g7.png", "num": "1554", "name": "หน่วยแพทย์กู้ชีพ"},
    {"img": "assets/images/g8.png", "num": "1646", "name": "ศูนย์เอราวัณ"},
    {"img": "assets/images/g9.png", "num": "1669", "name": "เจ็บป่วยฉุกเฉิน"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน",
                textAlign: TextAlign.center,
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
              const SizedBox(height: 20),
              Container(
                width: 186,
                height: 149,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Icon(
                    Icons.warning_amber_rounded,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: hotline.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IntroductionCallUi(
                              name: hotline[index]["name"]!,
                              phone: hotline[index]["num"]!,
                              img: hotline[index]["img"]!,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 6,
                        ),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              hotline[index]["img"]!,
                              width: 45,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              hotline[index]["num"]!,
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 255, 255, 255),
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
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                hotline[index]["name"]!,
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 255, 255, 255),
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
                            ),
                            const Icon(
                              Icons.phone,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
