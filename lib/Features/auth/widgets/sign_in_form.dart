import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../../constant.dart';
import '../../../core/utils/styles.dart';
import '../../home/presentation/views/home_view.dart';


class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  SignInFormState createState() => SignInFormState();
}

class SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            focusNode: _emailFocusNode,
            validator: MultiValidator(
              [
                RequiredValidator(errorText: 'This field required'),
                EmailValidator(errorText: 'Use valid e-mail'),
              ],
            ).call,
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) {},
            decoration: const InputDecoration(labelText: 'Email'),
            onTap: () {
              _scrollToFocus(_emailFocusNode);
            },
          ),
          const SizedBox(height: defaultPadding),
          TextFormField(
            focusNode: _passwordFocusNode,
            validator: MultiValidator(
              [
                RequiredValidator(errorText: 'Password Error'),
                MinLengthValidator(8, errorText: 'use valid Password'),
                PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                    errorText: 'use valid Password')
              ],
            ).call,
            obscureText: true,
            onSaved: (newValue) {},
            decoration: const InputDecoration(labelText: 'Password'),
            onTap: () {
              _scrollToFocus(_passwordFocusNode);
            },
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forgot Password',
              style: TextStyle(color: AppConstants.kSecondaryColor),
            ),
          ),
          const SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                backgroundColor: AppConstants.kSecondaryColor,
              ),
              onPressed: () {
                //TODO
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ),
                  );
                }
              },
              child: Text(
                'SignIn',
                style: Styles.textStyle30.copyWith(
                  color: AppConstants.kWhiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToFocus(FocusNode focusNode) {
    if (!focusNode.hasFocus) {
      Future.microtask(() {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    }
  }
}
