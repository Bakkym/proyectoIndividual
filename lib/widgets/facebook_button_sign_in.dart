import 'package:flutter/material.dart';
import 'home.dart';

class FacebookSignInButton extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Text('Iniciar con Facebook'),
            ),
          ],
        ),
      );

  }
}
