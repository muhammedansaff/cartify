import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  final double left;
  const ProfileTile(
      {super.key,
      required this.left,
      required this.icon,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: onPressed,
        child: SizedBox(
          height: 20,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Icon(
                  icon,
                  color: primaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 1 ),
                child: Text(
                  title,
                  style: const TextStyle(fontFamily: "ansaf", fontSize: 16),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: left,top: 5 ),
                child: Icon(
                     
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: primaryColor,
                    )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
