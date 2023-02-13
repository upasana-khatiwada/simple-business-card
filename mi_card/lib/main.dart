import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
          //we can add margin which is for outside of the widget 
          //and padding which is for inside of the widget
          //for more see flutter.dev/docs/development/ui/widgets/layout 
          color: Colors.white,
          child: const Text('hello'),
        ),
      ),),
    );
  }
}