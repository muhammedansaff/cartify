import 'package:cartify/tiles/addresstile.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  String _selectedAddress = "Office";

  void _onTileTap(String address) {
    setState(() {
      _selectedAddress = address;
    });
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
          "Saved Address",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "ansaf",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () => _onTileTap("Office"),
            child: AddressTile(
              mainAddress: "Home",
              subAddress: 'Oxford, Oxford Towers\n560017, Bangalore',
              isSelected: _selectedAddress == "Home",
            ),
          ),
          GestureDetector(
            onTap: () => _onTileTap("Home"),
            child: AddressTile(
              mainAddress: "Office",
              subAddress: 'Oxford, Office Towers\n560017, Karnataka',
              isSelected: _selectedAddress == "Office",
            ),
          ),
        ],
      ),
    );
  }
}

