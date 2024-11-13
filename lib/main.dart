import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/auth/sign_in_view.dart';
import 'constant.dart';
import 'core/services/service_locator.dart';

void main() {
  setup();
  runApp(const Movie());
}

class Movie extends StatelessWidget {
  const Movie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      home: const SignInView(),
    );
  }
}