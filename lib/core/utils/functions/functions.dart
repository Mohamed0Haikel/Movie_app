import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../constant.dart';
import '../../database/shared_preferences_keys.dart';
import '../../services/service_locator.dart';
import '../size_config.dart';


class Functions {
  double responsiveImage(BuildContext context,
      {double? percentage1, double? percentage2}) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    if (width < 500) {
      height = height * (percentage1 ?? 0.06);
    } else {
      height = height * (percentage2 ?? 0.08);
    }
    return height;
  }

  Future<bool?> flutterToastMethod(
      {required String msg,
      required context,
      double fontSize = 16,
      Color? color}) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color ?? AppConstants.kSecondaryColor,
      textColor: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: fontSize),
    );
  }

  double getResponsiveFontSize(context, {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  double getScaleFactor(context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tablet) {
      return width / 550;
    } else if (width < SizeConfig.desktop) {
      return width / 1000;
    } else {
      return width / 1920;
    }
  }

  Future<void> saveData({required String data, required String key}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, data);
  }

  Future<String?> getData({required String key}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key);
  }

  Future<void> removeData({required String key}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(key);
  }

  Future<void> saveModel({required String key, dynamic model}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    String customerJson = jsonEncode(model.toJson());
    await sharedPreferences.setString(key, customerJson);
  }

  

  Future<void> saveIntList(List<int> intList) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    List<String> stringList = intList.map((i) => i.toString()).toList();
    await sharedPreferences.setStringList(
        getIt.get<SharedPreferencesKeys>().listOfKeys, stringList);
  }

  Future<List<int>> getIntList() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    List<String>? stringList = sharedPreferences
        .getStringList(getIt.get<SharedPreferencesKeys>().listOfKeys);
    if (stringList != null) {
      return stringList.map((s) => int.parse(s)).toList();
    }
    return [];
  }
}
