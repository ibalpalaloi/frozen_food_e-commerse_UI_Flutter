import 'package:flutter/material.dart';

class CardProduk extends StatelessWidget {
  CardProduk(this.image, this.nama, this.harga);
  String image;
  String nama;
  String harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      height: 200,
      width: 110,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: const Offset(0, 0),
          blurRadius: 3,
          spreadRadius: 0.0,
        ),
      ]),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  image: AssetImage("assets/produk/${image}"),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "${nama}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Rp. ${harga}",
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            alignment: Alignment.center,
            height: 25,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Beli",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
