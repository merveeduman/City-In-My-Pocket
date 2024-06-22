import 'package:flutter/material.dart';
import 'package:pages_2_and_3/location_page.dart';

class CountryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Country'),
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocationPage()),
            );
          },
          child: Text('Select Location'),
        ),
      ),
    );
  }
}
