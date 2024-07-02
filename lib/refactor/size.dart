import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberRow extends StatefulWidget {
  @override
  _NumberRowState createState() => _NumberRowState();
}

class _NumberRowState extends State<NumberRow> {
  int selectedNumber = 7;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        int number = index + 6;
        bool isSelected = number == selectedNumber;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedNumber = number;
            });
          },
          child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected ? Colors.teal : Colors.transparent,
              border: Border.all(color: Colors.teal),
              borderRadius: BorderRadius.circular(8),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(2, 2),
                        blurRadius: 4,
                      ),
                    ]
                  : [],
            ),
            child: Text(
              number.toString(),
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.teal,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }),
    );
  }
}