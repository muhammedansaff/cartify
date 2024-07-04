import 'package:cartify/screens/payment/checkout.dart';
import 'package:flutter/material.dart';
import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/refactor/factor.dart';
import 'package:cartify/utils/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.SNACKBAR,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.white,
    textColor: primaryColor,
    fontSize: 16.0,
  );
}



class _CartScreenState extends State<CartScreen> {
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
          "My Cart",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "ansaf",
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const MyCart(
              name: "Nike Air Max Ap",
              img: "assets/dress/6.png",
            ),
            const MyCart(
              name: "Nike Air Max Ap",
              img: "assets/dress/5.png",
            ),
            const Text(
              "---------------------------------------",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontFamily: "ansaf",
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 325,
              height: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    color: Colors.black54,
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: Offset(1, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Promo Code",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                    child: MyButton(
                      onPressed: () {
                        showToast("promo code not available");
                      }, // Call the function
                      text: "Apply",
                      col: primaryColor,
                      textcolor: Colors.white,
                      isoutline: true,
                      height: 48,
                      width: 100, // Adjusted width to fit "Apply" text
                      texsize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const MyText(
                hor: 35,
                bold: true,
                first: "Price",
                second: "₹12000.00",
                col: Color(0xff717171)),
            const MyText(
                hor: 35,
                bold: true,
                first: "Discount",
                second: "₹0",
                col: Color(0xff717171)),
            const MyText(
                hor: 35,
                bold: true,
                first: "Shipping",
                second: "₹100.00",
                col: Color(0xff717171)),
            const MyText(
                hor: 35,
                bold: true,
                first: "Total Amount",
                second: "₹12100.00",
                col: Colors.black),
            const SizedBox(
              height: 35,
            ),
            MyButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutScreen()));},
                text: "Proceed To Payment",
                col: primaryColor,
                textcolor: Colors.white,
                isoutline: true,
                height: 42,
                width: 330,
                texsize: 20)
          ],
        ),
      ),
    );
  }
}
