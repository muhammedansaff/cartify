import 'package:cartify/refactor/profile.dart';
import 'package:cartify/screens/adress.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: Icon(
          Icons.arrow_back,
          color: primaryColor,
          size: 30,
        ),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "ansaf",
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 150),
            child: CircleAvatar(
              radius: 43,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                "assets/banner/4.jpg",
              ),
            ),
          ),
          const Text(
            "Muhammed Ansaf",
            style: TextStyle(
                fontSize: 16,
                color: Color(0xff4f4e4e),
                fontFamily: "ansaf",
                fontWeight: FontWeight.bold),
          ),
          const Text(
            "muhammedansaf44@gmail.com",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontFamily: "ansaf",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text(
              "Account Settings",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: "ansaf",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 330,
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey)),
            child: Column(
              children: [
                ProfileTile(
                  left: 177,
                  icon: Icons.person,
                  title: "Edit Profile",
                  onPressed: () {},
                ),
                const Divider(),
                ProfileTile(
                  left: 203,
                  icon: Icons.lock_sharp,
                  title: "Security",
                  onPressed: () {},
                ),
                const Divider(),
                ProfileTile(
                  left: 164,
                  icon: Icons.contacts_rounded,
                  title: "Saved Adress",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Address()));
                  },
                ),
                const Divider(),
                ProfileTile(
                  left: 195.7,
                  icon: Icons.payment_outlined,
                  title: "Payment",
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
