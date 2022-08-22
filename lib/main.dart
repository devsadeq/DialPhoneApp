import 'package:dial_phone_app/core/theme/app_theme.dart';
import 'package:dial_phone_app/views/dial/dial_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dial Phone App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const DialView(),
    );
  }
}
