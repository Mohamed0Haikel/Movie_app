import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../../core/components/components.dart';
import '../../../../core/utils/styles.dart';

// import '../../../auth/sign_in_view.dart';
import '../../../../generated/l10n.dart';
import '../../../welcome/welcome_view.dart';
import 'widgets/lang_row.dart';

class SelectLangViewBody extends StatelessWidget {
  const SelectLangViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    bool isTablet = AppConstants.kMinimumTabletWidth < width;
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).lang,
                style: Styles.textStyle20,
              ),
              const SizedBox(height: 15),
              const LanguageRow(),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: CustomButton(
                  height: isTablet ?  60 : 50,
                  width: isTablet ? width / 1.62 : width / 1.1,
                  text: S.of(context).next,
                  onPressed: () async {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        // builder: (context) => const SignInView(),
                        builder: (context) => const WelcomeView(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
  }
}
