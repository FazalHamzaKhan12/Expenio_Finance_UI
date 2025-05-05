import 'package:appvisual_ui/homepage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 480,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xFFAF52DE).withOpacity(0), // Purple
                  Color(0xFFF7EEFC), // Light pinkish white
                ],
              ),

              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Image.asset(
              "assets/images/kingdom-payment.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "E X P E N I O",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 40,
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Text(
              "Going cashless has never been this\neasier with the world’s most leading\n               expense manager.",
              style: TextStyle(fontSize: 20, color: Color(0xffAEAEB2)),
            ),
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ),
            child: Container(
              width: 400,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF4AC4F7),
                    Color(0xFF4892FF),
                  ], // Light blue to dark blue
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
