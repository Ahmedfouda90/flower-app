/*
import 'package:flutter/material.dart';

import 'package:untitled/pages/homeScreen.dart';
class Test extends StatelessWidget {
   String email;
   String hintText;
   String labelText;
   IconData prdfixicon = Icons.add;
   IconData suffixicon = Icons.search;
   bool ispassword;

   TextInputType inputType;
   */
/*var validateEmail =*//*
 String validateEmail (String value) {
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
   */
/*Function validatePassword =*//*
  String validatePassword (String value) {
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
   //
   // TextInputType
   Test({
   // this.validatePassword,
   // this.validateEmail,
   this.labelText,
     String validateEmail,
   this.hintText,
   this.prdfixicon,
   this.ispassword = true,
   this.suffixicon,
   this.inputType,
   });



   */
/*TextEditingController password = TextEditingController();
   TextEditingController confirmpassword = TextEditingController();

*//*


  // TextEditingController confirmpassword = TextEditingController();
  // GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
    send() {
      var formdata = formstate.currentState;
      if (formdata.validate()) {
        print('valid');
        return ;
      } else {
        print('not valid');
      }
    }
    return Form(
      key: formstate,
      child: Column(
        children: [
          TextFormField(
            validator: validateEmail,
            keyboardType:inputType,
            // obscureText: ispassword,
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
          ),
          SizedBox(height: 30,),
          TextFormField(
            validator: validatePassword,
            */
/*(value) {
              if(value == null || value.isEmpty || !value.contains('@') || !value.contains('.')){
                return 'Please enter some text';
              }
              return null;
            },*//*


            keyboardType:inputType,
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
          ),
          ElevatedButton(onPressed:(){
          if (formstate.currentState.validate()) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(),),);
      return ;
    } else {
    print('not valid');
    };

          },child: Text('send'))
        ],
      ),
    );
  }
}

*/
/*

class TestTextyField extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {

  }

}

class _TestTextyFieldState extends State<TestTextyField> {

  String email;
  String hintText;
  String labelText;
  IconData prdfixicon = Icons.add;
  IconData suffixicon = Icons.search;
  bool ispassword;

  TextInputType inputType;
  Function validateEmail = *//*

*/
/*String*//*
*/
/*
 *//*

*/
/*validateEmail*//*
*/
/*
 (String value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return null;
  };
  Function validatePassword = *//*

*/
/* String validatePassword*//*
*/
/*
 (String value) {
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
    onSaved: (String value){
      email = value;}
  };

  // TextInputType
  TestTextyField({
    this.validatePassword,
    this.validateEmail,
    this.labelText,
    this.hintText,
    this.prdfixicon,
    this.ispassword = true,
    this.suffixicon,
    this.inputType,
  });



  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    send() {
      var formdata = formstate.currentState;
      if (formdata.validate()) {
        print('valid');
        return ;
      } else {
        print('not valid');
      }
    }

    return Form(
      key: formstate,
      child: Column(
        children: [
          TextFormField(
            validator: widget.validateEmail,
            keyboardType: widget.inputType,
            // obscureText: ispassword,
            decoration: InputDecoration(
              hintText: widget.hintText,
              labelText: widget.labelText,
              prefixIcon: Icon(
                widget.prdfixicon,
              ),
              suffixIcon: Icon(
                widget.suffixicon,
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
          ),
          SizedBox(height: 30,),
          TextFormField(
            validator: widget.validatePassword,
            *//*

*/
/*(value) {
              if(value == null || value.isEmpty || !value.contains('@') || !value.contains('.')){
                return 'Please enter some text';
              }
              return null;
            },*//*
*/
/*


            keyboardType: widget.inputType,
            obscureText: widget.ispassword,
            decoration: InputDecoration(
              hintText: widget.hintText,
              labelText: widget.labelText,
              prefixIcon: Icon(
                widget.prdfixicon,
              ),
              suffixIcon: Icon(
                widget.suffixicon,
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
          ),
          ElevatedButton(onPressed: send, child: Text('send'))
        ],
      ),
    );
  }
}
*/

