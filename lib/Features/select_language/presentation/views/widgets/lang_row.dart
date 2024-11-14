import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../constant.dart';
import '../../manager/change_language_provider/change_language_provider.dart';
import '../../manager/change_language_provider/change_language_state.dart';
import 'language_container.dart';

class LanguageRow extends StatefulWidget {
  const LanguageRow({super.key});

  @override
  State<LanguageRow> createState() => _LanguageRowState();
}

class _LanguageRowState extends State<LanguageRow> {
  Color? colorEnglish;
  Color? colorArabic;
  Color? textColorEnglish;
  Color? textColorArabic;

  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeLanguageProvider>(
      builder: (context, languageProvider, child) {
        // Handle different states
        if (languageProvider.state is ChangeLangLoading) {
          return const CircularProgressIndicator();
        }

        return Directionality(
          textDirection: TextDirection.ltr,
          child: Row(
            children: [
              const Spacer(),
              LanguageContainer(
                language: 'English',
                // flagPath: Assets.unitedKingdomLogo,
                color: colorEnglish,
                textColor: textColorEnglish,
                onTap: () {
                  _selectEnglish(languageProvider);
                },
              ),
              const SizedBox(width: 10),
              LanguageContainer(
                language: 'العربية',
                // flagPath: Assets.egLogo,
                color: colorArabic,
                textColor: textColorArabic,
                onTap: () {
                  _selectArabic(languageProvider);
                },
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }

  void _selectEnglish(ChangeLanguageProvider provider) {
    setState(() {
      colorEnglish = AppConstants.kContainerColor;
      textColorEnglish = AppConstants.kWhiteColor;
      colorArabic = null;
      textColorArabic = null;
    });
    provider.changeLang('en');
  }

  void _selectArabic(ChangeLanguageProvider provider) {
    setState(() {
      colorEnglish = null;
      textColorEnglish = null;
      colorArabic = AppConstants.kBlackColor;
      textColorArabic = AppConstants.kWhiteColor;
    });
    provider.changeLang('ar');
  }
}
