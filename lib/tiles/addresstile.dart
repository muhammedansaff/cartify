import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.only(top: 10),
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
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
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
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mainAddress,
                          style: const TextStyle(
                            fontFamily: "ansaf",
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          subAddress,
                          style: const TextStyle(
                            fontFamily: "ansaf",
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
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
