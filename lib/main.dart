import 'package:flutter/material.dart';
import 'package:our_plans_flutter/pages/RegisterPage.dart';
import 'package:our_plans_flutter/pages/SignInPage.dart';
import 'package:our_plans_flutter/pages/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        'register': (context) => const Register(),
        'signin' : (context) => const SignIn()
      }
    );
  }
}