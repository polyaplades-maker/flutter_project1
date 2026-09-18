import 'package:flutter/material.dart';

class FirstMacket extends StatelessWidget {
  const FirstMacket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Meditate', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  Icon(Icons.search, size: 28),
                ],
              ),
              const SizedBox(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildTag('All', true),
                    _buildTag('Bible in a Year', false),
                    _buildTag('Dailies', false),
                    _buildTag('Minutes', false),
                    _buildTag('Novena', false),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2C94C),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                      child: Image.asset(
                        'assets/sun_moon.png',
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('A Song of Moon', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5),
                          const Text('Start with the basics', style: TextStyle(color: Colors.black54)),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.favorite_border, size: 16, color: Colors.black54),
                                  SizedBox(width: 5),
                                  Text('9 Sessions', style: TextStyle(fontSize: 12, color: Colors.black54)),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text('Start', style: TextStyle(fontSize: 12, color: Colors.black54)),
                                  SizedBox(width: 5),
                                  Icon(Icons.arrow_forward_ios, size: 10, color: Colors.black54),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(child: _buildCard(const Color(0xFFF2994A), 'assets/card_orange.png', 'The Sleep Hour', 'Asha Mukherjee', '3 Sessions')),
                  const SizedBox(width: 15),
                  Expanded(child: _buildCard(const Color(0xFFF2C94C), 'assets/card_yellow.png', 'Easy on the Mission', 'Peter Mach', '5 minutes')),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(child: _buildCard(const Color(0xFF2D9CDB), 'assets/card_blue.png', 'Relax with Me', 'Amanda James', '3 Sessions')),
                  const SizedBox(width: 15),
                  Expanded(child: _buildCard(const Color(0xFF219653), 'assets/card_teal.png', 'Sun and Energy', 'Micheal Hiu', '5 minutes')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTag(String text, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF4DB6AC) : const Color(0xFFE0F2F1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : const Color(0xFF4DB6AC),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildCard(Color color, String imagePath, String title, String author, String info) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                const SizedBox(height: 3),
                Text(author, style: const TextStyle(fontSize: 10, color: Colors.grey)),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.favorite_border, size: 12, color: Colors.grey),
                        const SizedBox(width: 3),
                        Text(info, style: const TextStyle(fontSize: 10, color: Colors.grey)),
                      ],
                    ),
                    Row(
                      children: const [
                        Text('Start', style: TextStyle(fontSize: 10, color: Colors.grey)),
                        SizedBox(width: 3),
                        Icon(Icons.arrow_forward_ios, size: 8, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}