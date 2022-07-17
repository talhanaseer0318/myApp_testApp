// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils/google_auth.dart';
import 'package:provider/provider.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetPage();
}

class _SignUpWidgetPage extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            //large text
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Text(
                      'Lets Sign you in',
                      style: GoogleFonts.lato(
                          fontSize: 35,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Welcome Back ,',
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900),
                      // textAlign: TextAlign.left,
                    ),
                    Text(
                      'You have been missed',
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900),
                      // textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email ,phone or username',
                        hintStyle:
                            GoogleFonts.lato(fontStyle: FontStyle.normal),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle:
                            GoogleFonts.lato(fontStyle: FontStyle.normal),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: SizedBox(
                        height: 50,
                        width: 400,
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 88, 78, 188)),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: <Widget>[
                      Expanded(
                          child: Divider(
                        endIndent: 5,
                        thickness: 1.5,
                      )),
                      Text(
                        "OR",
                        style: GoogleFonts.lato(),
                      ),
                      Expanded(
                          child: Divider(
                        indent: 5,
                        thickness: 1.5,
                      )),
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          // needed
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () async {
                              final provider =
                                  Provider.of<GoogleSignInProvider>(context,
                                      listen: false);
                              provider.googleLogin();
                              setState(() {});
                            }, // needed
                            child: Image.asset(
                              "assets/google.png",
                              width: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Material(
                          // needed
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {}, // needed
                            child: Image.asset(
                              "assets/facebook.png",
                              width: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Material(
                          // needed
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {}, // needed
                            child: Image.asset(
                              "assets/twitter.png",
                              width: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //email_pass box

            //sign in button

            //login google
          ]),
        ),
      ),
    );
  }

  signInWithGoogle() {}
}
