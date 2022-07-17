// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/landing.dart';
import 'package:myapp/pages/sign_up_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/utils/google_auth.dart';
import 'package:myapp/utils/routes.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      // ignore: prefer_const_constructors
      ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          initialRoute: "/",
          routes: {
            //home
            "/": (context) => LandingPage(),
            MyRoutes.homeRoute: (context) => HomePage(),
            MyRoutes.landingRoute: (context) => LandingPage(),
            MyRoutes.signUpRoute: (context) => SignUpWidget(),
          },
        ),
      );
}
