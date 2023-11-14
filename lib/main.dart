import 'package:bmi_calculate/provider/bmi_provider.dart';
import 'package:bmi_calculate/screen/bmi_calculation_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (context) {
            return BmiProvider();
          },
        )
      ], child: const BmiCalculationScreen()),
    );
  }
}
