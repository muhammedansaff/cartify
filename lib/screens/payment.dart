import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/tiles/credtitle.dart';
import 'package:cartify/tiles/paymenttile.dart';
import 'package:cartify/tiles/upitile.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> with TickerProviderStateMixin {
  String _payment = "UPI";
  bool upi = false;
  bool cred = false;
  bool net= false;
  late AnimationController _upiController;
  late AnimationController _credController;
  late Animation<double> _upiAnimation;
  late Animation<double> _credAnimation;
late AnimationController _netcontroller;
  late Animation<double> _netdoubleAnimation;

  @override
  void initState() {
    super.initState();
    _upiController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _credController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _upiAnimation = CurvedAnimation(
      parent: _upiController,
      curve: Curves.easeInOut,
    );
    _credAnimation = CurvedAnimation(
      parent: _credController,
      curve: Curves.easeInOut,
    );
     _netcontroller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
     _netdoubleAnimation = CurvedAnimation(
      parent: _netcontroller,
      curve: Curves.easeInOut,
    );
  }

  void _onTileTap(String payment) {
    setState(() {
      _payment = payment;
    });
  }

  @override
  void dispose() {
    _upiController.dispose();
    _credController.dispose();
     _netcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor, // Update to primaryColor if defined
            size: 30,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Payment Method",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "ansaf",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () => _onTileTap("UPI"),
              child: PaymentTile(
                toggle: !upi,
                downarrow: () {
                  setState(() {
                    upi = !upi; // Toggle UPI tiles visibility
                    if (upi) {
                      _upiController.forward();
                    } else {
                      _upiController.reverse();
                    }
                  });
                },
                mainPayment: "UPI",
                isSelected: _payment == "UPI",
              ),
            ),
            SizeTransition(
              sizeFactor: _upiAnimation,
              axisAlignment: -1.0,
              child: Center(
                child: Column(
                  children: upi
                      ? const [
                          UpiTile(
                            img: "assets/upi/1.png",
                            name: "Phonepe",
                            paymselect: true,
                            left: 165,
                          ),
                          UpiTile(
                            img: "assets/upi/2.png",
                            name: "google pay",
                            paymselect: false,
                            left: 150,
                          ),
                          UpiTile(
                            img: "assets/upi/3.png",
                            name: "paytm",
                            paymselect: false,
                            left: 165,
                          ),
                          UpiTile(
                            img: "assets/upi/4.png",
                            name: "amazon pay",
                            paymselect: false,
                            left: 115,
                          ),
                        ]
                      : [],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onTileTap("Credit / Debit Card"),
              child: PaymentTile(
                toggle: !cred,
                downarrow: () {
                  setState(() {
                    cred = !cred; // Toggle credit/debit card tiles visibility
                    if (cred) {
                      _credController.forward();
                    } else {
                      _credController.reverse();
                    }
                  });
                },
                mainPayment: "Credit / Debit Card",
                isSelected: _payment == "Credit / Debit Card",
              ),
            ),
            SizeTransition(
              sizeFactor: _credAnimation,
              axisAlignment: -1.0,
              child: Center(child: cred ? CredTitle() : SizedBox()),
            ),
            GestureDetector(
              onTap: () => _onTileTap("Net Banking"),
              child: PaymentTile(
                toggle: !net,
                downarrow: () {
                  setState(() {
                    net = !net; // Toggle UPI tiles visibility
                    if (net) {
                      _netcontroller.forward();
                    } else {
                      _netcontroller.reverse();
                    }
                  });
                },
                mainPayment: "Net Banking",
                isSelected: _payment == "Net Banking",
              ),
            ),
            SizeTransition(
              sizeFactor: _netdoubleAnimation,
              axisAlignment: -1.0,
              child: Center(
                child: Column(
                  children: net
                      ? const [
                          UpiTile(
                            img: "assets/upi/5.png",
                            name: "SBI",
                            paymselect: true,
                            left: 200,
                          ),
                          UpiTile(
                            img: "assets/upi/6.png",
                            name: "HDFC",
                            paymselect: false,
                            left: 185,
                          ),
                          UpiTile(
                            img: "assets/upi/7.png",
                            name: "AXIS",
                            paymselect: false,
                            left: 190,
                          ),
                          UpiTile(
                            img: "assets/upi/8.png",
                            name: "ICICI",
                            paymselect: false,
                            left: 185,
                          ),
                        ]
                      : [],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onTileTap("Cash on Delivery"),
              child: PaymentTile(
                toggle: true,
                downarrow: () {
                  setState(() {
                    net = false; // Hide UPI tiles for other payment methods
                    _netcontroller.reverse();
                  });
                },
                mainPayment: "Cash on Delivery",
                isSelected: _payment == "Cash on Delivery",
              ),
            ),
            const SizedBox(height: 15),
            MyButton(
              onPressed: () {},
              text: "Save",
              col: primaryColor,
              textcolor: Colors.white,
              isoutline: true,
              height: 40,
              width: 300,
              texsize: 14,
            ),
          ],
        ),
      ),
    );
  }
}
