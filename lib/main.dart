import 'package:flutter/material.dart';
import 'package:user_authentication/Languagescreen.dart';
import 'package:user_authentication/Mobilescreen.dart';
import 'package:user_authentication/Profilescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "language":(context)=>Languagescreen(),
        "phone":(context)=>Mobilescreen(),
        "profile":(context)=>Profilescreen()
      },
      home: Languagescreen(),

    );
  }
}

