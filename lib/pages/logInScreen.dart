import 'package:flutter/material.dart';
import 'package:untitled/pages/homeScreen.dart';
import 'package:untitled/pages/registerScreen.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
          child: Column(
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
                  child: Text('signin')),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ));
                    },
                    child: Text(
                      'sign up',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
              SizedBox(
                height: 40,
              ),
              DefualtTextyField(
                prdfixicon: Icons.email_outlined,
                labelText: 'enter your email',
                hintText: 'EMail',
                inputType: TextInputType.emailAddress,
                ispassword: false,
              ),
              SizedBox(
                height: 40,
              ),
              DefualtTextyField(
                prdfixicon: Icons.password,
                labelText: 'enter your password',
                hintText: 'Password',
                inputType: TextInputType.visiblePassword,
                ispassword: false,
                suffixicon: Icons.visibility_off,
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(green),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {
                  var formdata = formstate.currentState;
                  if (formdata.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                    return;
                  } else {
                    print('not valid');
                  }
                },
                */
/*   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                      ),
                    ),);*/
/*
                child: Text(
                  'sign in',
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Test(
                prdfixicon: Icons.password,
                labelText: 'enter your password',
                hintText: 'Password',
                inputType: TextInputType.visiblePassword,
                ispassword: true,
                suffixicon: Icons.visibility_off,
              ),
              // Test(hintText: 'iyfvuyvh'),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ));
                    },
                    child: Text(
                      'sign up',
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  )
                ],
              ),*/
