import 'package:app_components/src/pages/alert_page.dart';
import 'package:app_components/src/pages/avatar_page.dart';
import 'package:flutter/material.dart';

import 'package:app_components/src/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const HomePage(),
        'alert': (context) => const AlertPage(),
        'avatar': (context) => const AvatarPage(),
      },
    );
  }
}