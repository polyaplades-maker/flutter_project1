import 'package:flutter/material.dart';
import 'first_macket.dart';
import 'second_macket.dart';
import 'third_macket.dart';
import 'fourth_macket.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMenuScreen(),
    );
  }
}

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Выбор макета')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButton(context, 'Макет 1: Meditate', const FirstMacket()),
            _buildButton(context, 'Макет 2: Medinow Login', const SecondMacket()),
            _buildButton(context, 'Макет 3: Food Menu', const ThirdMacket()),
            _buildButton(context, 'Макет 4: 3D Design', const FourthMacket()),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: OutlinedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => page)),
        child: Text(title),
      ),
    );
  }
}