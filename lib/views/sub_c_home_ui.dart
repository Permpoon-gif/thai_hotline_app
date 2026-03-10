import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/introduction_call_ui.dart';

class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});

  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}

class _SubCHomeUiState extends State<SubCHomeUi> {
  List<Map<String, String>> hotline = [
    {"img": "assets/images/b1.png", "num": "1333", "name": "ธนาคารกรุงเทพ"},
    {"img": "assets/images/b2.png", "num": "1115", "name": "ธนาคารออมสิน"},
    {
      "img": "assets/images/b3.png",
      "num": "02 888 8888",
      "name": "ธนาคารกสิกรไทย"
    },
    {
      "img": "assets/images/b4.png",
      "num": "02 111 1111",
      "name": "ธนาคารกรุงไทย"
    },
    {"img": "assets/images/b5.png", "num": "1572", "name": "ธนาคารกรุงศรี"},
    {
      "img": "assets/images/b6.png",
      "num": "1428",
      "name": "ธนาคาร ทีเอ็มบีธนชาต"
    },
    {"img": "assets/images/b7.png", "num": "1588", "name": "ธนาคาร ซิตี้แบงก์"},
    {
      "img": "assets/images/b8.png",
      "num": "1327",
      "name": "ธนาคารแลนด์ แอนด์ เฮ้าส์"
    },
    {
      "img": "assets/images/b9.png",
      "num": "02 645 9000",
      "name": "ธนาคารอาคารสงเคราะห์"
    },
    {
      "img": "assets/images/b10.png",
      "num": "02 777 7777",
      "name": "ธนาคารไทยพาณิชย์"
    },
    {
      "img": "assets/images/b11.png",
      "num": "02 165 5555",
      "name": "ธนาคารเกียรตินาคินภัทร"
    },
    {
      "img": "assets/images/b12.png",
      "num": "02 697 5454",
      "name": "ธนาคารไทยเครดิต"
    },
    {
      "img": "assets/images/b13.png",
      "num": "02 285 1555",
      "name": "ธนาคารยูโอบี"
    },
    {
      "img": "assets/images/b14.png",
      "num": "02 633 6000",
      "name": "ธนาคารทิสโก้"
    },
    {
      "img": "assets/images/b15.png",
      "num": "02 204 2766",
      "name": "ธนาคารอิสลามแห่งประเทศไทย"
    },
    {
      "img": "assets/images/b16.png",
      "num": "02 626 7777",
      "name": "ธนาคาร ซีไอเอ็มบี ไทย"
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
            image: AssetImage("assets/images/im3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "สายด่วน\nธนาคาร",
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
                    Icons.credit_card,
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
