import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/home_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
    void initState(){
    Future.delayed(
      Duration(seconds: 3),
      (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUi(),
          ),
          );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/images2.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(
            "assets/images/images1.png",
            width: 180,
          ),

          SizedBox(height: 20),

          Text(
            'THAI HOTLINE APP',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255,238,0,0),
            ),
          ),

          SizedBox(height: 5),

          Text(
            'สายด่วน',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255,238,0,0),
            ),
          ),

          SizedBox(height: 50),

          CircularProgressIndicator(
            color: Color.fromARGB(255,51,0,0),
          ),

          SizedBox(height: 10),

          Text(
            "Loading...",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    ),
  ),
);
  }
}