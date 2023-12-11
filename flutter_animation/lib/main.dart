import 'package:flutter/material.dart';
import 'package:flutter_animation/widgets/animated_container.dart';
import 'package:flutter_animation/widgets/animated_cross_fade.dart';
import 'package:flutter_animation/widgets/animated_opacity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Animation'),
        backgroundColor: Colors.blue[100],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            AnimatedContainerWidget(),
            Divider(),
            AnimatedCrossFadeWidget(),
            Divider(),
            AnimatedOpacityWidget(),
          ],
        ),
      ),
  );
  }
}