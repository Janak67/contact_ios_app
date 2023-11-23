import 'package:flutter/material.dart';

class ContactProvider with ChangeNotifier {
  DateTime? date = DateTime.now();

  void changeDate(DateTime? d1){
    date = d1;
    notifyListeners();
  }
}
