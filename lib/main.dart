import 'package:flutter/material.dart';
import 'First_Assign/Calculator.dart';
import 'Second_Assign/about.dart';
import 'Second_Assign/home.dart';
import 'Third_Assign/broadcast_internet.dart';
import 'Third_Assign/dark_light.dart';
import 'Third_Assign/login.dart';
import 'Third_Assign/signup.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //final appTitle = 'MENU';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: appTitle,
     // home: MyHomePage(title: appTitle),
      initialRoute: '/',
      routes: {
         '/': (context) => const  MyHomePage(),
         '/calculator': (context) => const CalculatorScreen (),
        '/about': (context) => const AboutUsPage(),
        '/settings': (context) =>  HomePage(),
        '/login': (context) => const LoginScreen(),
        '/singup': (context) =>  const SignUpScreen(),
        '/connection': (context) =>  const ConnectionWidget(),

    },
    );
  }
}
