import 'package:flutter/material.dart';
import 'package:geo/colors.dart';
import 'package:geo/components/default_button.dart';
import 'package:geo/components/form_error.dart';
import '../../otp/otp_screen.dart';
import 'package:get/get.dart';


class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;

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
            SizedBox(height: 25,),
            buildFirstNameFormField(),
            SizedBox(height: 25,),
            buildLastNameFormField(),
            SizedBox(height: 25,),
            buildPhoneNumberFormField(),
            SizedBox(height: 25,),
            buildAddressFormField(),
            FormError(errors: errors),
            SizedBox(height: 25,),
            Default_Button(text: 'Continue',press: () {
              if(formKey.currentState!.validate()){
               //Goto otp Screen
                Get.to(() => OtpScreen());
              }
            },),
          ],
        ));
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      maxLines: 3,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(AddressNullError)) {
          removeError(error: AddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(error: AddressNullError);
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.location_on,
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(PhoneNumberNullError)) {
          removeError(error: PhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(error: PhoneNumberNullError);
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your Phone Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.phone,
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => lastName = newValue!,
      decoration: const InputDecoration(
        labelText: "Last Name",
        hintText: "Enter Last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.account_box,
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(NameNullError)) {
          removeError(error: NameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(error: NameNullError);
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.account_box,
        ),
      ),
    );
  }
}
