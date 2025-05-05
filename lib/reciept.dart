import 'package:appvisual_ui/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_line/dotted_line.dart';

class RecieptPage extends StatelessWidget {
  const RecieptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[100],
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 5),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reciept",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(CupertinoIcons.share_up, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),

          Center(
            child: Container(
              width: 380,
              height: 500,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("22.02.2025", style: TextStyle(fontSize: 14)),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "CASH RECEIPT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  DottedLine(),
                  SizedBox(height: 20),
                  RowText(label: "Amount", value: "\$40.00"),
                  SizedBox(height: 12),
                  RowText(label: "Service Fee", value: "\$2.82"),
                  SizedBox(height: 12),
                  RowText(label: "Internet Charge", value: "\$7.18"),
                  SizedBox(height: 20),
                  DottedLine(),
                  SizedBox(height: 15),
                  RowText(label: "Total", value: "\$50.00", isBold: true),
                  SizedBox(height: 20),
                  DottedLine(),
                  SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(child: Icon(FontAwesomeIcons.barcode, size: 70)),
                      Center(child: Icon(FontAwesomeIcons.barcode, size: 70)),
                      Center(child: Icon(FontAwesomeIcons.barcode, size: 70)),
                      Center(child: Icon(FontAwesomeIcons.barcode, size: 70)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false, // remove all previous routes
              );
            },
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
                  "Home",
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

class RowText extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;

  const RowText({
    required this.label,
    required this.value,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(fontSize: 16)),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
