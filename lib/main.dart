import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:remoteai/Screens/control_page.dart';
import 'package:remoteai/Screens/settings_page.dart';
import 'package:remoteai/Themes/signin_theme.dart';
import 'FireBase/firebase_options.dart';
import 'Screens/home_screen.dart';

Future<void> main() async {
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
      debugShowCheckedModeBanner: false,
      initialRoute:
          FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/settings': (context) => const SettingsPage(),
        '/controls': (context) => const ControlPage(),
        '/sign-in': (context) {
          return Theme(
            data: SigninTheme().signinTheme(),
            child: SignInScreen(
              styles: const {
                EmailFormStyle(
                  signInButtonVariant: ButtonVariant.filled,
                ),
              },
              showPasswordVisibilityToggle: true,
              providers: [
                EmailAuthProvider(),
              ],
              actions: [
                AuthStateChangeAction<SignedIn>((context, state) {
                  Navigator.pushReplacementNamed(context, '/home');
                }),
              ],
            ),
          );
        },
        '/profile': (context) {
          return ProfileScreen(
            auth: FirebaseAuth.instance,
            providers: [
              EmailAuthProvider(),
            ],
            actions: [
              SignedOutAction((context) {
                Navigator.pushReplacementNamed(context, '/sign-in');
              }),
            ],
          );
        },
      },
    );
  }
}
