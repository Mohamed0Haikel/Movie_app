import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../../constant.dart';
import '../../../core/utils/styles.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();

  String password = "";

  @override
  void dispose() {
    _scrollController.dispose();
    _usernameFocusNode.dispose();
    _emailFocusNode.dispose();
    _phoneFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              focusNode: _usernameFocusNode,
              validator: RequiredValidator(errorText: 'S.of(context).fieldrequired').call,
              onSaved: (newValue) {},
              decoration: InputDecoration(labelText: 'S.of(context).Username'),
              onTap: () {
                _scrollToFocus(_usernameFocusNode);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                focusNode: _emailFocusNode,
                validator: MultiValidator(
                  [
                    RequiredValidator(errorText: 'S.of(context).fieldrequired'),
                    EmailValidator(errorText: 'S.of(context).validEmail'),
                  ],
                ).call,
                keyboardType: TextInputType.emailAddress,
                onSaved: (newValue) {},
                decoration: InputDecoration(labelText: 'S.of(context).Email'),
                onTap: () {
                  _scrollToFocus(_emailFocusNode);
                },
              ),
            ),
            TextFormField(
              focusNode: _phoneFocusNode,
              onSaved: (newValue) {},
              decoration: InputDecoration(labelText: 'S.of(context).Phone'),
              keyboardType: TextInputType.phone,
              onTap: () {
                _scrollToFocus(_phoneFocusNode);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                focusNode: _passwordFocusNode,
                validator: MultiValidator(
                  [
                    RequiredValidator(errorText: 'S.of(context).PasswordError'),
                    MinLengthValidator(8, errorText: 'S.of(context).validPassword'),
                    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'S.of(context).validPassword')
                  ],
                ).call,
                obscureText: true,
                onChanged: (value) => password = value,
                onSaved: (newValue) {},
                decoration: InputDecoration(labelText: 'S.of(context).Password'),
                onTap: () {
                  _scrollToFocus(_passwordFocusNode);
                },
              ),
            ),
            TextFormField(
              focusNode: _confirmPasswordFocusNode,
              validator: (val) => MatchValidator(errorText: 'S.of(context).passwordIsIncorrect')
                  .validateMatch(val!, password),
              obscureText: true,
              onSaved: (newValue) {},
              decoration: InputDecoration(labelText: "S.of(context).Confirm S.of(context).Password"),
              onTap: () {
                _scrollToFocus(_confirmPasswordFocusNode);
              },
            ),
            const SizedBox(height: defaultPadding * 1.5),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(defaultPadding * 0.75),
                  backgroundColor: AppConstants.kSecondaryColor,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                child: Text(
                  'S.of(context).SignUp',
                  style: Styles.textStyle20.copyWith(
                    color: AppConstants.kWhiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
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
