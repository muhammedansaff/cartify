import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class CredTitle extends StatelessWidget {
  const CredTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        width: 306,
        height: 248,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: primaryColor),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 36,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10, left: 5),
                    hintText: "Name on Card",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: primaryColor)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                  height: 36,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Card Number",
                      contentPadding: EdgeInsets.only(top: 10, left: 5),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: primaryColor)),
                    ),
                  )),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 36,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Expiry Date (mm/yy)",
                    contentPadding: EdgeInsets.only(top: 10, left: 5),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: primaryColor)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MyButton(
                onPressed: () {},
                text: "Save Card",
                col: primaryColor,
                textcolor: Colors.white,
                isoutline: true,
                height: 40,
                width: 150,
                texsize: 14)
          ],
        ),
      ),
    );
  }
}
