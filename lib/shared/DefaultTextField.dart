import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefualtTextyField extends StatelessWidget {
  String? hintText;
  String? labelText;
  IconData? prdfixicon = Icons.add;
  IconData? suffixicon = Icons.search;
  bool ispassword=false;
  TextInputType? inputType;
  String? validateEmail (String value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return null;
  }
  String? validatePassword (String value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
  }

  // TextInputType
  DefualtTextyField(
      { this.labelText,
         required String validateEmail,
        required String validatePassword,
      this.hintText,
      this.prdfixicon,
      this.ispassword = false,
      this.suffixicon,
      this.inputType});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
    send() {
      if (formstate.currentState!.validate()) {
        print('valid');
      } else {
        print('not valid');
      }
    }

    return Form(
      key: formstate,
        child: TextFormField(
          validator:ispassword ?  validateEmail:validatePassword,/*(value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },*/

      keyboardType: inputType,
      obscureText: ispassword,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Icon(
          prdfixicon,
        ),
        suffixIcon: Icon(
          suffixicon,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.grey,
        )),
        contentPadding: EdgeInsets.all(
          10,
        ),
      ),
    ),);
  }
}
