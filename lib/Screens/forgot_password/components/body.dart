import 'package:flutter/material.dart';
import 'package:geo/Screens/home/home_screen.dart';
import 'package:geo/colors.dart';
import 'package:geo/components/custom_suffixicon.dart';
import 'package:geo/components/default_button.dart';
import 'package:geo/components/form_error.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../components/no_account_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: const [
              SizedBox(height: 50),
              Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: 24,
                    color: colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter your email and we will send \n you a link to return your account ",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 50),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String email;

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
        child: Column(
      children: [
          TextFormField(
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue!,
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(EmailNullError)) {
              removeError(error: EmailNullError);
            } else if (value.isNotEmpty) {
              addError(error: INvalidEmailError);
              return ;
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
        ),
        const SizedBox(height: 50),
        FormError(errors: errors),
        const SizedBox(height: 50),
        Default_Button(text: "Continue",
            press: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                launchUrl(Uri.parse("https://mail.google.com/"));
              }
              for (var error in errors) {
                debugPrint('Error from Form: $error');
              }
            },
        ),
        const SizedBox(height: 50),
        const NoAccountText(),
      ],
    ));
  }
}
