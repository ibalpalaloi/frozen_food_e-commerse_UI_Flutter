import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: 170,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        children: [
          Text(
            "As Frozen Palu",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Jln Mandala No.1",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            "Kel. Birobuli Utara Kec. Palu Selatan",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            "Kota Palu",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
