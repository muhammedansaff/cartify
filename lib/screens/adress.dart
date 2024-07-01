import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  String _selectedAddress = "";

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

class AddressTile extends StatelessWidget {
  final String mainAddress;
  final String subAddress;
  final bool isSelected;

  const AddressTile({
    super.key,
    required this.mainAddress,
    required this.subAddress,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Container(
          height: 80,
          width: 306,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                offset: Offset(-1, 0),
                blurRadius: 2,
                spreadRadius: 0,
                color: Colors.black45,
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: isSelected ? Colors.teal : Colors.white,
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: isSelected ? Colors.white : Colors.teal,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mainAddress,
                          style: TextStyle(
                            fontFamily: "ansaf",
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          subAddress,
                          style: TextStyle(
                            fontFamily: "ansaf",
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.edit,
                  color: Colors.teal,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
