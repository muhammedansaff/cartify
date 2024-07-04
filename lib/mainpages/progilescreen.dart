import 'package:cartify/pages/homescreen.dart';
import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/refactor/profile.dart';
import 'package:cartify/screens/profile/Notification.dart';
import 'package:cartify/screens/profile/adress.dart';
import 'package:cartify/screens/payment/payment.dart';
import 'package:cartify/screens/order/trackscreen.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
                  border: Border.all(width: 1, color: Colors.black87)),
              child: Column(
                children: [
                  ProfileTile(
                    left: 177,
                    icon: Icons.person,
                    title: "Edit Profile",
                    onPressed: () {},
                  ),
                  const Divider(
                    color: Colors.black87,
                  ),
                  ProfileTile(
                    left: 203,
                    icon: Icons.lock_sharp,
                    title: "Security",
                    onPressed: () {},
                  ),
                  const Divider(color: Colors.black87),
                  ProfileTile(
                    left: 164,
                    icon: Icons.contacts_rounded,
                    title: "Saved Adress",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Address()));
                    },
                  ),
                  const Divider(color: Colors.black87),
                  ProfileTile(
                    left: 195.7,
                    icon: Icons.payment_outlined,
                    title: "Payment",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Payment()));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text("Orders",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "ansaf",
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 330,
              height: 85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.black87)),
              child: Column(
                children: [
                  ProfileTile(
                    left: 173,
                    icon: Icons.location_on_sharp,
                    title: "Track Order",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrackScreen(ishistory: true)));
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(color: Colors.black87),
                  ProfileTile(
                    left: 159,
                    icon: Icons.history,
                    title: "Order History",
                    onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrackScreen(ishistory: false)));
                    },
                  ),
                ],
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
                  border: Border.all(width: 1, color: Colors.black87)),
              child: Column(
                children: [
                  ProfileTile(
                    left: 160,
                    icon: Icons.account_balance_wallet_rounded,
                    title: "Invite & Earn",
                    onPressed: () {},
                  ),
                  const Divider(color: Colors.black87),
                  ProfileTile(
                    left: 200.7,
                    icon: Icons.wallet_giftcard_rounded,
                    title: "Coupens",
                    onPressed: () {},
                  ),
                  const Divider(color: Colors.black87),
                  ProfileTile(
                    left: 163,
                    icon: Icons.notifications,
                    title: "Notifications",
                    onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationScreen()));},
                  ),
                  const Divider(color: Colors.black87),
                  ProfileTile(
                    left: 172,
                    icon: Icons.headphones_outlined,
                    title: "Help Center",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            MyButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                text: "Logout",
                col: const Color.fromARGB(255, 247, 85, 73),
                textcolor: Colors.white,
                isoutline: true,
                height: 35,
                width: 330,
                texsize: 16),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
