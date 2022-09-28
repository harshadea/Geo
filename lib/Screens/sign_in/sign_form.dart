import 'package:flutter/material.dart';
import 'package:geo/Screens/home/home_screen.dart';
import 'package:geo/colors.dart';
import 'package:geo/components/custom_suffixicon.dart';
import 'package:geo/components/default_button.dart';
import 'package:get/get.dart';
import '../forgot_password/forgot_password_screen.dart';


class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final formKey = GlobalKey<FormState>();
   String? email,password;
   bool remember = false;
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                buildEmailTextFormField(),
                const SizedBox(
                  height: 30.0,
                ),
                buildPasswordFormField(),
                const SizedBox(
                  height: 30.0,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: remember,
                      activeColor: PrimaryColor,
                      onChanged: (value) {
                        setState(() {
                          remember = value ?? false;
                        });
                      },
                    ),
                    const Text("Remember me"),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Get.to(() => const ForgotPasswordScreen());
                        },
                        child: const Text(
                          "Forgot Password",
                          style: TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
                // FormError(errors: errors),
                const SizedBox(
                  height: 20,
                ),
                Default_Button(
                  text: 'Continue',
                  press: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      Get.to(() => const HomeScreen());
                    }
                    for (var error in errors) {
                      debugPrint('Error from Form: $error');
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  TextFormField buildEmailTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(EmailNullError)) {
          removeError(error: EmailNullError);
        }  else if (value.isNotEmpty) {
          addError(error: INvalidEmailError);
          return null;
        }
      },
      validator: (value) { if (value == null || value.isEmpty) {
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

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(PassNullError)) {
          removeError(error: PassNullError);
        } else if (value.length >= 8) {
          removeError(error: ShortPassError);
        }
          else if (value.length < 8 && value.isNotEmpty) {
          addError(error: ShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(error: PassNullError);
          removeError(error: ShortPassError);
          return 'Password is Empty';
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
}