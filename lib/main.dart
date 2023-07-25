import'package:flutter/material.dart';
import 'package:untitled/pages/checkOut.dart';
import 'package:untitled/pages/detailsScreen.dart';
import 'package:untitled/pages/homeScreen.dart';
import 'package:provider/provider.dart';

import 'package:untitled/pages/logInScreen.dart';
import 'package:untitled/pages/registerScreen.dart';
import 'package:untitled/provider/provider.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context){
        return Cart();
      },

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomePage() ,
      ),
    );
  }
}



