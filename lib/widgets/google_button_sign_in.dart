import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
import 'home.dart';

class GoogleSignInButton extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await FirebaseService.signinGoogle();
              },
              child: const Text('Iniciar con Google'),
            ),
          ],
        ),
      );

  }
}
