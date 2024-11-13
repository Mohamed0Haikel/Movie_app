import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

abstract class AppConstants {
  static const Color backgroundColor2 = Color(0xFF17203A);
  static const Color backgroundColorLight = Color(0xFFF2F6FF);
  static const Color backgroundColorDark = Color(0xFF25254B);
  static const Color shadowColorLight = Color(0xFF4A5367);
  static const Color shadowColorDark = Colors.black;
  static const Color kBlackColor = Color(0xff0C0C0C);
  static const Color kWhiteColor = Color(0xffFCFCFC);
  static const Color kButtonColor = Color(0xffC2272D);
  static const Color kLangTextColor = Color(0xff0C0C0C);
  static const Color kLangBorderColor = Color.fromRGBO(252, 252, 252, 0.2);
  static const Color kLabelForTextFiledColor = Color(0xff667085);
  static const Color kTextFiledBorderColor = Color(0xffD0D5DD);
  static const Color kContainerColor = Color(0xff090961);
  static const Color kNoInternetColor = Color(0xff3F4A52);
  static const Color kPrimaryColor = Colors.blueAccent;
  // static const Color kprimaryColor = Colors.greenAccent;
  // static const Color ksecondaryColor = Colors.greenAccent;
  static const Color kSecondaryColor = Color(0xFF6CD8D1);
  static const int kMinimumTabletWidth = 768;
}

const kPrimaryColor = Color(0xff100B20);
const kTranstionDuration = Duration(milliseconds: 250);
const kGtSectraFine = 'GT Sectra Fine';
const kFeaturedBox = 'featured_box';
const kNewestBox = 'newest_box';


const primaryColor = Color(0xFF6CD8D1);
// const primaryColor = Color(0xFF255ED6);
const secondaryColor = Color(0xFF6CD8D1);
const textColor = Color(0xFF35364F);
const backgroundColor = Color(0xFFE6EFF9);
const redColor = Color(0xFFE85050);

const defaultPadding = 16.0;

const emailError = 'Enter a valid email address';
const requiredField = "This field is required";

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ],
);

const InputDecoration dropdownInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
);
