// ignore_for_file: camel_case_types, must_be_immutable

import 'package:bmi_calculator/views/home_screen_view.dart';
import 'package:flutter/material.dart';

class bmiResultView extends StatefulWidget {
  bmiResultView({
    super.key,
    required this.text,
    required this.textColor,
    required this.bmi,
    required this.weightStatus,
  });

  String text;
  Color textColor;
  double bmi;
  String weightStatus;

  @override
  State<bmiResultView> createState() => _bmiResultViewState();
}

class _bmiResultViewState extends State<bmiResultView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0d1232),
      appBar: AppBar(
        title: const Text('Your BMI Result'),
        centerTitle: true,
        backgroundColor: const Color(0xff0d1232),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 240,
              decoration: BoxDecoration(
                color: const Color(0xff252a48),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    weightStatus,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 60),
                backgroundColor: const Color(0xffe6015e),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Re-Check BMI',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
