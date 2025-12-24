import 'package:flutter/material.dart';
import 'package:gorunapp_live/router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    return MaterialApp.router(
      title: 'GoRunApp',
      routerConfig: router.goRouter, 
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
    );
  }
}

