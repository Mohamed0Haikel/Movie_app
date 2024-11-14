import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Features/auth/sign_in_view.dart';
import 'Features/select_language/presentation/manager/change_language_provider/change_language_provider.dart';
import 'constant.dart';
import 'core/database/cache_helper.dart';
import 'core/services/service_locator.dart';
import 'generated/l10n.dart';

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
    return Consumer<ChangeLanguageProvider>(
      builder: (context, languageProvider, child) {
        return MaterialApp(
          title: 'Movie',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: languageProvider.lang == 'en'
                ? GoogleFonts.robotoTextTheme(ThemeData.dark().textTheme)
                : GoogleFonts.tajawalTextTheme(ThemeData.dark().textTheme),
          ),
          locale: Locale(languageProvider.lang),
          localizationsDelegates: const <LocalizationsDelegate>[
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const <Locale>[
            Locale('en'),
            Locale('ar'),
          ],
          home: const SignInView(),
        );
      },
    );
  }
}