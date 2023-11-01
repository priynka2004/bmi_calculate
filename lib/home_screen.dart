import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _currentSliderValue = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242225),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text(
                    "BMI Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          color: const Color(0xFF484149),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 100,
                            ),
                          ),
                          const Text(
                            "Male",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 160,
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
                              size: 100,
                            ),
                          ),
                          const Text(
                            "Female",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "180",
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Colors.white,
                        thumbColor: Colors.red,
                        value: _currentSliderValue,
                        max: 200,
                        divisions: 20,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          color: const Color(0xFF484149),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          const Text(
                            "WEIGHT",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          const Text(
                            "60",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF615664),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF615664),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color(0xFF484149),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "AGE",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          const Text(
                            "28",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF615664),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF615664),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    minimumSize:
                        MaterialStateProperty.all(const Size(1000, 50)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "CALCULATE",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
