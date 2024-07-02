import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentTile extends StatelessWidget {
  final String mainPayment;
  final bool isSelected; 
 final void Function()? downarrow;
   bool toggle=true;
   PaymentTile({
    super.key,
    required this.toggle,
    required this.downarrow,
    required this.mainPayment,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
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
                      backgroundColor: Colors.teal,
                      child: isSelected
                          
                          ? const CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.teal,
                              ),
                            ):const CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.white,
                            )
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 18),
                        Text(
                          mainPayment,
                          style: const TextStyle(
                            fontFamily: "ansaf",
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
                GestureDetector(
                  onTap: downarrow,
                  child:  Icon(
                    toggle?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up_rounded,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
