import 'package:flutter/material.dart';

class Banner_ extends StatelessWidget {
  Banner_(this.image);
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 180,
        width: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage("assets/banner/${image}"),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
