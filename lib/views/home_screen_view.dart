import 'package:bmi_calculator/views/bmi_result_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String text = "";
Color textColor = Colors.white;
double bmi = 0;
String weightStatus = "";

bool? isMale;
double height = 50;
int age = 0;
int weight = 40;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0d1232),
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xff0d1232),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xff252a48)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 75,
                              color: isMale == true
                                  ? const Color(0xffe6015e)
                                  : const Color(0xffb0b6d2),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: isMale == true
                                    ? const Color(0xffe6015e)
                                    : const Color(0xffb0b6d2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xff252a48)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 75,
                              color: isMale == false
                                  ? const Color(0xffe6015e)
                                  : const Color(0xffb0b6d2),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: isMale == false
                                    ? const Color(0xffe6015e)
                                    : const Color(0xffb0b6d2),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff252a48),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffb0b6d2),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toInt().toString(),
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Slider(
                        value: height,
                        min: 40,
                        max: 240,
                        activeColor: const Color(0xffe6015e),
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff252a48),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffb0b6d2),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            weight.toString(),
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'Weight+',
                                backgroundColor: const Color(0xff0d1232),
                                child: const Icon(Icons.add),
                              ),
                              const SizedBox(width: 10),
                              FloatingActionButton(
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'Weight-',
                                backgroundColor: const Color(0xff0d1232),
                                child: const Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff252a48),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffb0b6d2),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            age.toString(),
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'Age+',
                                backgroundColor: const Color(0xff0d1232),
                                child: const Icon(Icons.add),
                              ),
                              const SizedBox(width: 10),
                              FloatingActionButton(
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'Age-',
                                backgroundColor: const Color(0xff0d1232),
                                child: const Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (isMale != null && weight != 0 && age != 0) {
                      double heightInMeter = height / 100;
                      bmi = weight / (heightInMeter * heightInMeter);
                      if (bmi < 18.5) {
                        weightStatus = "Underweight";
                        textColor = Colors.yellowAccent;
                        text = "Your Weight is too low eat some health food.";
                      } else if (bmi > 18.5 && bmi < 24.9) {
                        weightStatus = "	Healthy Weight";
                        text = "You have a healthy body weight good job.";
                        textColor = Colors.green;
                      } else if (bmi > 25.0 && bmi < 29.9) {
                        weightStatus = "	Overweight";
                        textColor = Colors.orangeAccent;
                        text = "Your body id overweight keep doing workout.";
                      } else {
                        weightStatus = "Obesity";
                        textColor = Colors.redAccent;
                        text = "Your weight is too heavy go to GYM.";
                      }

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return bmiResultView(
                            text: text,
                            textColor: textColor,
                            bmi: bmi,
                            weightStatus: weightStatus);
                      }));
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: Size(MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height),
                  backgroundColor: const Color(0xffe6015e),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "Check Your BMI",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
