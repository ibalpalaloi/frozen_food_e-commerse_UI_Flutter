import 'package:flutter/material.dart';

class Kategori_icon extends StatelessWidget {
  Kategori_icon(this.image, this.kategori);

  String image;
  String kategori;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      child: Column(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(50),
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 2),
                image: DecorationImage(
                    image: AssetImage("assets/icon_kategori/${image}"))),
          ),
          SizedBox(height: 5),
          Text(
            "${kategori}",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
