// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_network_app/screens/screens.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Onboarding3Screen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
