import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../core/utils/styles.dart';
import '../../auth/sign_in_view.dart';
import '../../auth/sign_up_view.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/bg.svg",
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [ 
                const Spacer(),
                Image.asset("assets/images/logo.svg"),
                const Spacer(),
                // SizedBox(height: defaultPadding),
                SizedBox(
                  width: size.width * 0.8,
                  child: OutlinedButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInView(),
                      ),
                    ),
                    child: Text(
                      "Sign In",
                      // style: TextStyle(
                      //   color: AppConstants.kSecondaryColor,
                      // ),
                      style: Styles.textStyle30.copyWith(
                        color: AppConstants.kSecondaryColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: defaultPadding),

                SizedBox(
                  width: size.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        )),
                    style: TextButton.styleFrom(
                      backgroundColor: AppConstants.kSecondaryColor,
                    ),
                    child: Text(
                      "Sign Up",
                      style: Styles.textStyle30.copyWith(
                        color: AppConstants.kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
