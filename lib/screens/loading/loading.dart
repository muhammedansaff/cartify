import 'dart:async';
import 'dart:math';

import 'package:cartify/screens/loading/failedpay.dart';
import 'package:cartify/screens/loading/success.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class PaymentProcessingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     // Generate a random number between 0 and 1
    double randomValue = Random().nextDouble();

    // Probability thresholds
    double successThreshold = 0.60; // 75% chance for SuccessScreen
    double failedThreshold = 0.40;  // 25% chance for FailedScreen

    // Determine which screen to navigate to based on the random value
    Widget screenToNavigate = randomValue < successThreshold
        ? SuccessScreen()
        : FailedScreen();

    // Start a timer to navigate to the determined screen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => screenToNavigate,
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Processing Payment...',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: 20,
                  child: LinearProgressIndicator(
                    value: null,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


