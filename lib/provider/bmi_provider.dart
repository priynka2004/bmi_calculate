import 'package:bmi_calculate/util/colors_const.dart';
import 'package:bmi_calculate/util/strings_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BmiProvider extends ChangeNotifier {
  double height = 1.80;

  int age = 20;
  int weight = 40;
  String result = StringConst.result;

  void calculateBMI() {
    double meter = height / 100;
    double bmi = weight / (meter * meter);
    result = bmi.toStringAsFixed(2);
  }

  void incrementAge() {
    notifyListeners();
    age++;
  }

  void decrementAge() {
    if (age > 0) {
      notifyListeners();
      age--;
    }
  }

  void incrementWeight() {
    notifyListeners();
    weight++;
  }

  void decrementWeight() {
    if (weight > 0) {
      notifyListeners();
      weight--;
    }
  }

  void calculateBmi() {
    calculateBMI();
    String message;
    double bmi = double.parse(result);

    if (bmi <= 18.5) {
      message = StringConst.textUnderweight;
    } else if (bmi <= 24.9) {
      message = StringConst.textNormalWeight;
    } else {
      message = StringConst.textOverweight;
    }

    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: ColorsConst.toastTextextColor,
        fontSize: 16.0
    );
  }

}
