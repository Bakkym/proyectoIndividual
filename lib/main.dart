import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tclase/services/firebase_service.dart';
import 'package:tclase/widgets/facebook_button_sign_in.dart';
import 'package:tclase/widgets/google_button_sign_in.dart';
import 'package:tclase/widgets/twitter_button_sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi App'),
        ),
        body: Center(
          child: FutureBuilder(
            future: FirebaseService.firebaseInit(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done){
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GoogleSignInButton(),
                      FacebookSignInButton(),
                      TwitterSignInButton()
                    ]
                  );
              } else {
                return const CircularProgressIndicator();
              }
            },
          )
          
        ),
      ),
    );
  }
}
