import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/about_ui.dart';
import 'package:thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:thai_hotline_app/views/sub_b_home_ui.dart';
import 'package:thai_hotline_app/views/sub_c_home_ui.dart';
import 'package:thai_hotline_app/views/sub_d_home_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int currentIndexStatus = 0;

  List<Widget> showBody = [
    SubAHomeUi(),
    SubBHomeUi(),
    SubCHomeUi(),
    SubDHomeUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 130, 130, 130),
        centerTitle: true,
        title: const Text(
          'สายด่วน THAILAND',
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
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUi(),
                ),
              );
            },
          )
        ],
      ),
      body: showBody[currentIndexStatus],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndexStatus,
        selectedItemColor: const Color.fromARGB(255, 143, 70, 245),
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            currentIndexStatus = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
    );
  }
}
