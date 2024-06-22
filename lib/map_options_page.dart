import 'package:flutter/material.dart';
import 'package:pages_2_and_3/map_page.dart';

class MapOptionsPage extends StatelessWidget {
  final String country;
  final String city;
  final String district;

  MapOptionsPage({
    required this.country,
    required this.city,
    required this.district,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Select Option',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://static.vecteezy.com/system/resources/previews/005/748/213/non_2x/turquoise-social-media-duotone-gradient-background-social-network-stories-soft-colorful-theme-teal-graphic-display-wallpaper-modern-vibrant-mobile-app-design-blending-bright-duo-colors-template-vector.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: EdgeInsets.all(15.0),
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 8.0,
          children: [
            _buildOptionCard(
                context, 'Restaurant\n', Icons.restaurant, Colors.green, 1),
            _buildOptionCard(
                context, 'Hospital\n', Icons.local_hospital, Colors.green, 2),
            _buildOptionCard(
                context, 'Castle\n', Icons.castle, Colors.green, 3),
            _buildOptionCard(
                context, 'Library\n', Icons.library_books, Colors.green, 4),
            _buildOptionCard(
                context, 'Cafe\n', Icons.local_cafe, Colors.green, 5),
            _buildOptionCard(
                context, 'Mosque\n', Icons.mosque, Colors.green, 6),
            _buildOptionCard(context, 'AVM\n', Icons.shop, Colors.green, 7),
            _buildOptionCard(
                context, 'School\n', Icons.school, Colors.green, 8),
            _buildOptionCard(
                context, 'Museum\n', Icons.museum, Colors.green, 9),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context, String option,
      IconData iconData, Color color, int cardNumber) {
    return Card(
      color: color,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MapPage(
                country: country,
                city: city,
                district: district,
                option: option,
                cardNumber: cardNumber,
              ),
            ),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\nCard $cardNumber',
                style: TextStyle(
                  color: Colors.transparent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 8),
              Icon(
                iconData,
                color: Colors.white,
                size: 32.0,
              ),
              SizedBox(height: 8),
              Text(
                option,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
