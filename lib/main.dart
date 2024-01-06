import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/firebase_options.dart';
import 'package:instagram_clone/state/auth/backend/authenticator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram clone',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                await Authenticator().loginWithGoogle();
              },
              child: const Text('SignIn with Google'),
            ),
            TextButton(
              onPressed: () async {
                await Authenticator().loginWithFacebook();
              },
              child: const Text('SignIn with Facebook'),
            ),
            TextButton(
              onPressed: () async {
                await Authenticator().logOut();
              },
              child: const Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
