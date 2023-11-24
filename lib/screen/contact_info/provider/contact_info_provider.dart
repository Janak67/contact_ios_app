import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactInfoProvider with ChangeNotifier {
  DateTime? date = DateTime.now();
  TimeOfDay? time = TimeOfDay.now();

  void changeDate(DateTime? d1) {
    date = d1;
    notifyListeners();
  }

  void changeTime(TimeOfDay? d1) {
    time = d1;
    notifyListeners();
  }
}
