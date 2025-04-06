import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/feature/auth/presentation/screens/login_screen.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
    );
  }
}
