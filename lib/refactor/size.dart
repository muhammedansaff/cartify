import 'package:cartify/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            width: 40,
            height: 40,
            margin: EdgeInsets.all(8),
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
            child: Center(
              child: Text(
                number.toString(),
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class ColorRow extends StatefulWidget {
  ColorRow({
    super.key,
  });

  @override
  _ColorRowState createState() => _ColorRowState();
}

class _ColorRowState extends State<ColorRow> {
  late Color selectedColor;
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.grey,
    Colors.green,
    Colors.yellow,
  ];

  @override
  void initState() {
    super.initState();
    selectedColor = colors[0];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(colors.length, (index) {
        Color color = colors[index];
        bool isSelected = color == selectedColor;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedColor = color;
            });
          },
          child: Container(
              margin: EdgeInsets.all(5),
              child: isSelected
                  ? CircleAvatar(
                      radius: 28, // Larger size if selected
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 26,
                        backgroundColor: color,
                      ),
                    )
                  : CircleAvatar(
                      radius: 23, // Larger size if selected
                      backgroundColor: color,
                    )),
        );
      }),
    );
  }
}

class CustomerCard extends StatelessWidget {
  final String img;
  final String name;
  final String review;
  const CustomerCard(
      {super.key, required this.img, required this.name, required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade300,
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 19,
            backgroundImage: AssetImage(img),
          ),
          SizedBox(width: 10), // Added for spacing between avatar and text
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Aligns children to the start
            mainAxisAlignment: MainAxisAlignment.center, // Centers vertically
            children: [
              Text(
                name,
              ),
              SizedBox(height: 5), // Added for spacing between name and review
              Text(
                review,
                style: TextStyle(color: primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
