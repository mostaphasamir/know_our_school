//TODO: add your view model class here
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../Model/model.dart';

class SchoolInfoViewModel extends ChangeNotifier
{
  SchoolModel ? schoolModel;

  fetchData()async{
    final String response = await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    final data = await json.decode(response);
    schoolModel = SchoolModel.fromJson(data[0]);
    notifyListeners();
  }
}