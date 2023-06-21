import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xff0d1232),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: double.infinity,
            ),
          ),
          Container(
            color: Color(0xffe6015e),
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {},
              height: 50,
              child: Text(
                'Check Your BMI',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
