import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'Features/auth/sign_in_view.dart';
import 'Features/select_language/presentation/manager/change_language_provider/change_language_provider.dart';
import 'constant.dart';
import 'core/database/cache_helper.dart';
import 'core/services/service_locator.dart';

Future<void> main() async {
  setup();
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await getIt<CacheHelper>().init();
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => ChangeLanguageProvider()..getCachedLang(),
      child: const Movie(),
    ),
  );
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