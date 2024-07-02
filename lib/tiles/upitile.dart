import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class UpiTile extends StatelessWidget {
  final String img;
  final bool paymselect;
  final String name;
  final double left;

  const UpiTile(
      {super.key,
      required this.img,
      required this.name,
      required this.left,
      required this.paymselect});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: 306,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: primaryColor)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                img,
               
              ),
            ),
            SizedBox(width: 10,),
            Text(
              name,
              style: const TextStyle(fontSize: 14),
            ),
            Padding(
              padding:  EdgeInsets.only(left: left),
              child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.teal,
                  child: paymselect
                      ? const CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.teal,
                          ),
                        )
                      : const CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.white,
                        )),
            ),
          ],
        ),
      ),
    );
  }
}
