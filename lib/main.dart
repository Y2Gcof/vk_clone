import 'package:flutter/material.dart';
import 'package:vk_clone/widgets/auth/auth_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromRGBO(25, 25, 26, 1),
        ),
      ),
      home: AuthWidget(),
    );
  }
}
