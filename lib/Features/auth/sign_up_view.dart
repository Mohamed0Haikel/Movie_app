import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../core/utils/styles.dart';
import 'widgets/sign_up_form.dart';
import 'sign_in_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // Ensures the view resizes when the keyboard appears
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            // Close the keyboard when tapping outside the input fields
            FocusScope.of(context).unfocus();
          },
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'S.of(context).SignUp',
                    style: Styles.textStyle30.copyWith(
                      color: AppConstants.kSecondaryColor,
                    ),
                  ),
                  SizedBox(height: size.height * 0.13),
                  SignUpForm(), // The form
                  Row(
                    children: [
                      Text('S.of(context).haveAccount'),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInView(),
                          ),
                        ),
                        child: Text(
                          "S.of(context).SignIn",
                          style: const TextStyle(
                              color: AppConstants.kSecondaryColor),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
