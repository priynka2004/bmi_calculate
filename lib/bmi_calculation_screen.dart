import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class BmiCalculationScreen extends StatefulWidget {
  const BmiCalculationScreen({super.key});

  @override
  State<BmiCalculationScreen> createState() => _BmiCalculationScreenState();
}

class _BmiCalculationScreenState extends State<BmiCalculationScreen> {
  double height = 1.80;

  int age = 20;
  int weight = 40;
  String result = '';

  void calculateBMI() {
    double meter = height / 100;
    double bmi = weight / (meter * meter);
    result = bmi.toStringAsFixed(2);
  }

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  void decrementAge() {
    if (age > 0) {
      setState(() {
        age--;
      });
    }
  }

  void incrementWeight() {
    setState(() {
      weight++;
    });
  }

  void decrementWeight() {
    if (weight > 0) {
      setState(() {
        weight--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242225),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04,
            right: MediaQuery.of(context).size.width * 0.04,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "BMI CALCULATOR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF484149),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 80,
                            ),
                          ),
                          const Text(
                            "Male",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF484149),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.female_outlined,
                              color: Colors.white,
                              size: 80,
                            ),
                          ),
                          const Text(
                            "Female",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 160,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color(0xFF484149),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "HEIGHT",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            height.toStringAsFixed(2),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 40),
                          ),
                          const Text(
                            "cm",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                      Slider(
                        mouseCursor: MaterialStateMouseCursor.clickable,
                        value: height,
                        max: 300,
                        divisions: 300,
                        label: height.round().toString(),
                        onChanged: (double value) {
                          setState(
                                () {
                              height = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF484149),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "WEIGHT",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              Text(
                                '(kg)',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Text(
                            weight.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: decrementWeight,
                                icon: const Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF615664),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: incrementWeight,
                                icon: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF615664),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: const Color(0xFF484149),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "AGE",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            age.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: decrementAge,
                                icon: const Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF615664),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: incrementAge,
                                icon: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF615664),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFF615664),
                    ),
                    minimumSize: MaterialStateProperty.all(
                      const Size(400, 40),
                    ),
                  ),
                  onPressed: () {
                    calculateBMI();
                    String message;
                    double bmi = double.parse(result);

                    if (bmi <= 18.5) {
                      message = 'Under weight';
                    } else if (bmi <= 24.9) {
                      message = 'Normal weight';
                    } else {
                      message = 'Over weight';
                    }

                    Fluttertoast.showToast(
                        msg: message,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );

                  },
                  child: const Text(
                    "CALCULATE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
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