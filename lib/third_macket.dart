import 'package:flutter/material.dart';

class ThirdMacket extends StatelessWidget {
  const ThirdMacket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FD),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE5E5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.arrow_back_ios_new, size: 18, color: Color(0xFFEB5757)),
                  ),
                  const SizedBox(width: 20),
                  const Text('Popular Menu', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: const [
                          Text('Search', style: TextStyle(color: Colors.grey)),
                          Spacer(),
                          Icon(Icons.search, color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE5E5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(Icons.tune, color: Color(0xFFEB5757)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  _buildFoodItem('Original Salad', 'Lovy Food', '8', 'assets/food1.jpg'),
                  _buildFoodItem('Fresh Salad', 'Cloudy Resto', '10', 'assets/food2.jpg'),
                  _buildFoodItem('Yummie Ice Cream', 'Circlo Resto', '6', 'assets/food5.jpg'),
                  _buildFoodItem('Vegan Special', 'Haty Food', '11', 'assets/food4.jpg'),
                  _buildFoodItem('Mixed Pasta', 'Recto Food', '13', 'assets/food3.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFFFE5E5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: const [
                  Icon(Icons.home, color: Color(0xFFEB5757)),
                  SizedBox(width: 5),
                  Text('Home', style: TextStyle(color: Color(0xFFEB5757), fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Icon(Icons.shopping_bag_outlined, color: Color(0xFFEB5757)),
            const Icon(Icons.chat_bubble_outline, color: Color(0xFFEB5757)),
            const Icon(Icons.person_outline, color: Color(0xFFEB5757)),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem(String title, String subtitle, String price, String imagePath) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          Text('\$$price', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFEB5757))),
        ],
      ),
    );
  }
}