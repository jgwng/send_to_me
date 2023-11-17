import 'package:flutter/material.dart';
import 'package:send_to_me/config/theme_config.dart';
import 'package:send_to_me/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.mainTheme,
      home: const MyHomePage(),
    );
  }
}

