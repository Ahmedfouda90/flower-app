import 'package:flutter/material.dart';

import 'homeScreen.dart';
class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> form = GlobalKey();
  String? password;
  bool isPassword = false;

  @override
  void initState() {
    isPassword = !isPassword;
    super.initState();
  }

  /*void ss(){
    setState(() {
      ispassword=!ispassword;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();
/*
    send() {
      if (form.currentState.validate()) {
        print('valid');
        return;
      } else {
        print('not valid');
      }
    }
*/

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flower App',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formstate,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 280,
                  child: TextFormField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      hintText: 'enter your email',
                      labelText: 'email',
                      prefixIcon: Icon(Icons.email_outlined),
                      contentPadding: EdgeInsets.all(
                        10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 280,
                  child: TextFormField(
                    obscureText:isPassword ,
                    // controller: TextEditingController(),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      hintText: 'enter your password',
                      labelText: 'password',
                      // prefixIcon: Icon(Icons.visibility),
                      suffixIcon: IconButton(
                        icon: isPassword
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        onPressed: (){
                          // isPassword=!isPassword;
// gfgf
                          setState(() {
                            isPassword=!isPassword;

                          });
                        },
                      ),
                      contentPadding: EdgeInsets.all(
                        10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                      return;
                    },
                    child: Text('Register')),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}