import 'package:flutter/material.dart';
import 'package:geo/colors.dart';
import 'package:geo/components/custom_suffixicon.dart';
import 'package:geo/components/default_button.dart';
import 'package:geo/components/form_error.dart';
import 'package:get/get.dart';

import '../../../Screens/complete_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String confirm_password;
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            buildEmailFormField(),
            const SizedBox(
              height: 25,
            ),
            buildPasswordFormField(),
            const SizedBox(
              height: 25,
            ),
            buildConfPassFormField(),
            FormError(errors: errors),
            const SizedBox(
              height: 35,
            ),
            Default_Button(
              text: "Continue",
              press: () {
                if (formKey.currentState!.validate()) {
                  Get.to(() => CompleteProfileScreen());
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildConfPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(PassNullError)) {
          removeError(error: PassNullError);
        } else if (value.length >= 8) {
          removeError(error: MatchPassError);
        } else if (value.length < 8 && value.isNotEmpty) {
          addError(error: MatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(error: PassNullError);
          removeError(error: MatchPassError);
          return "Confirm Password is Empty";
        } else if (value.length < 8 && value.isNotEmpty) {
          addError(error: MatchPassError);
          return 'Short Password';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Icon(
            Icons.lock,
          ),
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(PassNullError)) {
          removeError(error: PassNullError);
        } else if (value.length >= 8) {
          removeError(error: ShortPassError);
        } else if (value.length < 8 && value.isNotEmpty) {
          addError(error: ShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(error: PassNullError);
          removeError(error: ShortPassError);
          return "Password is Empty";
        } else if (value.length < 8 && value.isNotEmpty) {
          addError(error: ShortPassError);
          return 'Short Password';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Icon(
            Icons.lock,
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(EmailNullError)) {
          removeError(error: EmailNullError);
        } else if (value.isNotEmpty) {
          addError(error: INvalidEmailError);
          return null;
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(error: EmailNullError);
          removeError(error: INvalidEmailError);
          return 'Email is Empty';
        } else if (value.isNotEmpty) {
          addError(error: INvalidEmailError);
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(),
      ),
    );
  }
}
