import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils/google_auth.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatefulWidget {
  const LoggedInWidget({Key? key}) : super(key: key);

  @override
  State<LoggedInWidget> createState() => _LoggedInWidgetState();
}

class _LoggedInWidgetState extends State<LoggedInWidget> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 88, 78, 188),
        title: Text(
          'Logged In',
          style: GoogleFonts.lato(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
              child: Text(
                'Logout',
                style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: Color.fromARGB(255, 88, 78, 188), width: 4),
                boxShadow: [
                  BoxShadow(blurRadius: 10, color: Colors.grey, spreadRadius: 2)
                ],
              ),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(user.photoURL!),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              user.displayName!,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                fontSize: 25,
              ),
            ),
            Text(
              user.email!,
              style: GoogleFonts.lato(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
