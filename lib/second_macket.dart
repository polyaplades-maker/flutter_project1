import 'package:flutter/material.dart';

class SecondMacket extends StatelessWidget {
  const SecondMacket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4DB6AC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Spacer(),
              const Text('medinow', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white)),
              const SizedBox(height: 10),
              const Text('Meditate With Us!', style: TextStyle(fontSize: 18, color: Colors.white70)),
              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text('Sign in with Apple', style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB2DFDB),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text('Continue with Email or Phone', style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 15),
              const Text('Continue With Google', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              const Spacer(),
              
              Image.asset(
                'assets/meditation.png',
                height: 200, // Ограничиваем высоту
                fit: BoxFit.contain, // Картинка вписывается в размеры
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}