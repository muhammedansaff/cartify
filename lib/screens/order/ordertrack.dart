import 'package:cartify/pages/bottomnav.dart';
import 'package:cartify/refactor/Mybutton.dart';
import 'package:cartify/tiles/tracktile.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class OrderStatusPage extends StatelessWidget {
  final String img;
  final String name;
  final String orderid;
  final String price;
  final String date;
  const OrderStatusPage(
      {super.key,
      required this.img,
      required this.date,
      required this.name,
      required this.orderid,
      required this.price});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Order Status",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "ansaf",
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  TrackOrder(istrack: true,
                      isbutton: false,
                      ordernum: orderid,
                      img: img,
                      name: name,
                      price: price,
                      date: date),
                  SizedBox(width: 16),
                ],
              ),
            ),
            SizedBox(height: 16),
            OrderStatusCard(),
            SizedBox(height: 50),
            ActionButtons(),
          ],
        ),
      ),
    );
  }
}

class OrderStatusCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Order Id - #123ABCD456',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Divider(),
            OrderStatusItem(
              icon: Icons.shopping_cart,
              status: 'Order Placed',
              date: 'October 5 2023, 8:00pm',
              isActive: true,
            ),
            OrderStatusItem(
              icon: Icons.local_shipping,
              status: 'Shipped',
              date: 'October 6 2023, 9:00am',
              isActive: true,
            ),
            OrderStatusItem(
              icon: Icons.directions_car,
              status: 'Out For Delivery',
              date: 'October 7 2023, 9:00am',
              isActive: true,
            ),
            OrderStatusItem(
              icon: Icons.check_circle,
              status: 'Delivered Successfully',
              date: 'Not Yet Delivered',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}

class OrderStatusItem extends StatelessWidget {
  final IconData icon;
  final String status;
  final String date;
  final bool isActive;

  OrderStatusItem({
    required this.icon,
    required this.status,
    required this.date,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: isActive ? primaryColor : Colors.grey.shade300,
              child: Icon(
                icon,
                color: Colors.white,
                size: 18,
              ),
            ),
            if (isActive)
              Container(
                height: 50,
                width: 2,
                child: Text(
                  "|||||||||||",
                  style: TextStyle(fontSize: 5, color: primaryColor),
                ),
              ),
          ],
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              status,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.black : Colors.grey,
              ),
            ),
            SizedBox(height: 4),
            Text(
              date,
              style: TextStyle(
                fontSize: 14,
                color: isActive ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyButton(
            onPressed: () {},
            text: "Cancel Order",
            col: Colors.red,
            textcolor: Colors.white,
            isoutline: true,
            height: 40,
            width: 310,
            texsize: 16),
        SizedBox(height: 8),
        MyButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => BottomNav()));
            },
            text: "Continue Shoping",
            col: primaryColor,
            textcolor: Colors.white,
            isoutline: true,
            height: 40,
            width: 310,
            texsize: 16)
      ],
    );
  }
}
