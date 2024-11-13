import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../core/utils/styles.dart';
import 'widgets/sign_in_form.dart';
import 'sign_up_view.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                    'SignIn',
                    style: Styles.textStyle30.copyWith(
                      color: AppConstants.kSecondaryColor,
                    ),
                  ),
                  SizedBox(height: size.height * 0.2),
                  const SignInForm(),
                  Row(
                    children: [
                      const Text('Don`t have account?'),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpView(),
                          ),
                        ),
                        child: const Text(
                          "SignUp!",
                          style: TextStyle(color: AppConstants.kSecondaryColor),
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
