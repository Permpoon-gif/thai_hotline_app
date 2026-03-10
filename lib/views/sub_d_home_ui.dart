import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/introduction_call_ui.dart';

class SubDHomeUi extends StatefulWidget {
  const SubDHomeUi({super.key});

  @override
  State<SubDHomeUi> createState() => _SubDHomeUiState();
}

class _SubDHomeUiState extends State<SubDHomeUi> {
  List<Map<String, String>> hotline = [
    {"img": "assets/images/w1.png", "num": "1130", "name": "ไฟฟ้านครหลวง"},
    {"img": "assets/images/w2.png", "num": "1129", "name": "ไฟฟ้าส่วนภูมิภาค"},
    {"img": "assets/images/w3.png", "num": "1416", "name": "ไฟฟ้าฝ่ายผลิต"},
    {"img": "assets/images/w4.png", "num": "1125", "name": "การประปานครหลวง"},
    {
      "img": "assets/images/w5.png",
      "num": "1662",
      "name": "การประปาส่วนภูมิภาค"
    },
    {"img": "assets/images/w6.png", "num": "1242", "name": "ทรู"},
    {"img": "assets/images/w7.png", "num": "1678", "name": "ดีแทค"},
    {"img": "assets/images/w8.png", "num": "1175", "name": "เอไอเอส"},
    {
      "img": "assets/images/w9.png",
      "num": "1100",
      "name": "แอดวานซ์ อินโฟร์ เซอร์วิส"
    },
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
            image: AssetImage("assets/images/im4.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "สายด่วน\nสาธารณูปโภค",
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
                    Icons.wifi,
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
