import 'package:appvisual_ui/addcard.dart';
import 'package:appvisual_ui/firstpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              SizedBox(
                height: 30,
                width: 123,
                child: Center(
                  child: Text(
                    "Hello, Alex",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 168, 168, 168),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: Text(
                        "Home",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQLpMUVGKD1e77BskkXt4zeuszQniiNNfisQ&s",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Container(
                  height: 130,
                  width: 450,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Color.fromARGB(255, 87, 163, 243),
                        Color.fromARGB(255, 49, 148, 253),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 19.0, right: 311),
                        child: Text(
                          "My Balance",
                          style: TextStyle(
                            color: Color.fromARGB(255, 236, 236, 236),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 21.1,
                              vertical: 0,
                            ),
                            child: Text(
                              "\$25,400",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 20.0,
                              bottom: 25,
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 280,
                      width: 450,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          colors: [
                            Color.fromARGB(255, 242, 176, 255),
                            Color.fromARGB(255, 210, 162, 255),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 290.0,
                              top: 15,
                            ),
                            child: Text(
                              "Expenses",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 15,
                                bottom: 10,
                              ),
                              child: CustomPaint(
                                size: Size(double.infinity, double.infinity),
                                painter: CurvePainter(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "JAN",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  "FEB",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                SizedBox(width: 30),

                                Text(
                                  "MAR",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                SizedBox(width: 30),

                                Text(
                                  "JUN",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                SizedBox(width: 30),

                                Text(
                                  "JUL",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                SizedBox(width: 30),
                                Text(
                                  "AUG",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  height: 8,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 250, 223, 255),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 240,
                  width: 470,
                  child: Column(
                    children: [
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              "Wallet",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: GestureDetector(
                              onTap:
                                  () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AddCard(),
                                    ),
                                  ),
                              child: Text(
                                "See all",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      walletDetaills(),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 25,
                            child: Icon(
                              size: 30,
                              FontAwesomeIcons.apple,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(
                                "iPhone 11",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 6.0),
                                child: Text(
                                  "10 Aug 2020",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 175.0),
                            child: Text(
                              "-\$299.10",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      walletDetaills(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: GestureDetector(
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddCard()),
                  ),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF4AC4F7), // Blue gradient top
                      Color(0xFF4892FF), // Blue gradient bottom
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.4),
                      blurRadius: 8,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(Icons.add, size: 30, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row walletDetaills() => Row(
    children: [
      SizedBox(width: 10),
      CircleAvatar(
        radius: 25,
        child: Icon(size: 30, FontAwesomeIcons.apple, color: Colors.black),
      ),
      SizedBox(width: 20),
      Column(
        children: [
          Text(
            "iPad Pro 2020",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 42.0),
            child: Text(
              "10 Aug 2020",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 140.0),
        child: Text(
          "-\$799.00",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // First Curve (original wave)
    final paint1 =
        Paint()
          ..color = Colors.purple
          ..strokeWidth = 4
          ..style = PaintingStyle.stroke;

    final path1 = Path();
    path1.moveTo(0, size.height * 0.5);
    path1.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.2,
      size.width * 0.33,
      size.height * 0.5,
    );
    path1.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.8,
      size.width * 0.66,
      size.height * 0.5,
    );
    path1.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.2,
      size.width,
      size.height * 0.4,
    );

    canvas.drawPath(path1, paint1);

    // Second Curve (opposite direction wave)
    final paint2 =
        Paint()
          ..color = Colors.purpleAccent.withOpacity(0.3)
          ..strokeWidth = 3
          ..style = PaintingStyle.stroke;

    final path2 = Path();
    path2.moveTo(0, size.height * 0.3); // start a little above

    path2.quadraticBezierTo(
      size.width * 0.2,
      size.height * 0.7,
      size.width * 0.33,
      size.height * 0.4,
    );
    path2.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.1,
      size.width * 0.66,
      size.height * 0.4,
    );
    path2.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.7,
      size.width,
      size.height * 0.3,
    );

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
