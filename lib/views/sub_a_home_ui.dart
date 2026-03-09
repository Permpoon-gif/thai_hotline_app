import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/about_ui.dart';

class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});

  @override
  State<SubAHomeUi> createState() => _SubAHomeUiState();
}

class _SubAHomeUiState extends State<SubAHomeUi> {

  List<Map<String, String>> hotline = [
    {"img":"assets/images/h1.png","num":"1146","name":"กรมทางหลวงชนบท"},
    {"img":"assets/images/h2.png","num":"1155","name":"ตำรวจท่องเที่ยว"},
    {"img":"assets/images/h3.png","num":"1193","name":"ตำรวจทางหลวง"},
    {"img":"assets/images/h4.png","num":"1197","name":"ข้อมูลจราจร"},
    {"img":"assets/images/h5.png","num":"1348","name":"ขสมก."},
    {"img":"assets/images/h6.png","num":"1490","name":"บขส."},
    {"img":"assets/images/h7.png","num":"1543","name":"เส้นทางทางด่วน"},
    {"img":"assets/images/h8.png","num":"1586","name":"กรมทางหลวง"},
    {"img":"assets/images/h9.png","num":"1690","name":"การรถไฟแห่งประเทศไทย"},
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
                "สายด่วน\nการเดินทาง",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              // กล่องรูปด้านบน
              Container(
                width: 186,
                height: 149,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Icon(
                    Icons.image,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  itemCount: hotline.length,
                  itemBuilder: (context, index) {

                    return Container(
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
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: Text(
                              hotline[index]["name"]!,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          const Icon(
                            Icons.phone,
                            color: Colors.white,
                          )
                        ],
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

