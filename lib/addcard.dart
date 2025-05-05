import 'package:appvisual_ui/addnewcard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove default back arrow
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            // Custom back button
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.blue, size: 18),
                  Text(
                    "Back",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
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
                    "Wallet",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: GestureDetector(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddNewCard()),
                        ),
                    child: Icon(
                      Icons.add_circle_outline,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Image.asset(
            "assets/images/card.png",
            height: 220,
            width: 420,
            fit:
                BoxFit
                    .cover, // Or use BoxFit.contain/BoxFit.fill depending on result
          ),
          Icon(FontAwesomeIcons.ellipsis, color: Colors.blue),
          SizedBox(height: 10),
          Image.asset(
            "assets/images/Group 30.png",
            height: 250,
            width: 420,
            fit:
                BoxFit
                    .cover, // Or use BoxFit.contain/BoxFit.fill depending on result
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(right: 295.0),
            child: Text(
              "Transactions",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          walletDetaills(),
          SizedBox(height: 10),
          walletDetaills(),
        ],
      ),
    );
  }
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
