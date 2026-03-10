import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroductionCallUi extends StatefulWidget {
  final String name;
  final String phone;
  final String img;

  const IntroductionCallUi({
    super.key,
    required this.name,
    required this.phone,
    required this.img,
  });

  @override
  State<IntroductionCallUi> createState() => _IntroductionCallUiState();
}

class _IntroductionCallUiState extends State<IntroductionCallUi> {
  Future<void> makePhoneCall() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: widget.phone,
    );

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("โทรสายด่วน"),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/images2.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.img,
                  width: 120,
                ),
                const SizedBox(height: 60),
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.phone,
                  style: const TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () {
                    makePhoneCall();
                  },
                  icon: const Icon(Icons.phone),
                  label: const Text(
                    "โทรออก",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
