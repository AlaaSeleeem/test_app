import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_network_app/shared/Themes/theme.dart';

import 'firebase_options.dart';
import 'screens/crud/creat_profile.dart';

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
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: CreatProfile(),
    );
  }
}
