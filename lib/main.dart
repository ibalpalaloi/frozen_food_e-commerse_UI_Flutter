import 'package:as_frozen_1/widgets/card_produk.dart';
import 'package:as_frozen_1/widgets/kategori_icon.dart';
import 'package:as_frozen_1/widgets/footer.dart';
import 'package:as_frozen_1/widgets/banner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xffec1f25)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              width: 35,
              height: 35,
              child: Image.asset("assets/frozen_palu_white.png"),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Masukkan Kebutuhan anda disini",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Kategori_icon("kategori-ktgr092520210191.jpg", "kategori"),
                    Kategori_icon("kategori-ktgr092520210618.jpg", "kategori"),
                    Kategori_icon("kategori-ktgr092520211180.jpg", "kategori"),
                    Kategori_icon("kategori-ktgr092520212013.jpg", "kategori"),
                    Kategori_icon("kategori-ktgr092520212553.jpg", "kategori"),
                    Kategori_icon("kategori-ktgr092520214518.jpg", "kategori"),
                    Kategori_icon("kategori-ktgr102720210843.jpg", "kategori"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            height: 180,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                Banner_("1.jpg"),
                Banner_("2.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, left: 15, right: 10),
            height: 290,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                    width: 2),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/icon_kategori/kategori-ktgr092520210191.jpg"))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "daging",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "Selengkapnya",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CardProduk("produk-10.jpg", "product", "90.000"),
                      CardProduk("produk-11.jpg", "product", "90.000"),
                      CardProduk("produk-12.jpg", "product", "90.000"),
                      CardProduk("produk-13.jpg", "product", "90.000"),
                      CardProduk("produk-15.jpg", "product", "90.000"),
                      CardProduk("produk-16.jpg", "product", "90.000"),
                      CardProduk(
                          "produk-prd092320210999.jpg", "product", "90.000"),
                      CardProduk(
                          "produk-prd102720214041.jpeg", "product", "90.000"),
                      CardProduk(
                          "produk-prd102720213938.jpeg", "product", "90.000"),
                      CardProduk("produk-10.jpg", "product", "90.000"),
                      CardProduk("produk-11.jpg", "product", "90.000"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, left: 15, right: 10),
            height: 290,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                    width: 2),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/icon_kategori/kategori-ktgr092520211180.jpg"))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Bakso",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "Selengkapnya",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CardProduk("produk-10.jpg", "product", "90.000"),
                      CardProduk("produk-11.jpg", "product", "90.000"),
                      CardProduk("produk-12.jpg", "product", "90.000"),
                      CardProduk("produk-13.jpg", "product", "90.000"),
                      CardProduk("produk-15.jpg", "product", "90.000"),
                      CardProduk("produk-16.jpg", "product", "90.000"),
                      CardProduk(
                          "produk-prd092320210999.jpg", "product", "90.000"),
                      CardProduk(
                          "produk-prd102720214041.jpeg", "product", "90.000"),
                      CardProduk(
                          "produk-prd102720213938.jpeg", "product", "90.000"),
                      CardProduk("produk-10.jpg", "product", "90.000"),
                      CardProduk("produk-11.jpg", "product", "90.000"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 10, left: 15, right: 10),
            height: 290,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                    width: 2),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/icon_kategori/kategori-ktgr102720214695.jpeg"))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Nugget",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "Selengkapnya",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CardProduk("produk-10.jpg", "product", "90.000"),
                      CardProduk("produk-11.jpg", "product", "90.000"),
                      CardProduk("produk-12.jpg", "product", "90.000"),
                      CardProduk("produk-13.jpg", "product", "90.000"),
                      CardProduk("produk-15.jpg", "product", "90.000"),
                      CardProduk("produk-16.jpg", "product", "90.000"),
                      CardProduk(
                          "produk-prd092320210999.jpg", "product", "90.000"),
                      CardProduk(
                          "produk-prd102720214041.jpeg", "product", "90.000"),
                      CardProduk(
                          "produk-prd102720213938.jpeg", "product", "90.000"),
                      CardProduk("produk-10.jpg", "product", "90.000"),
                      CardProduk("produk-11.jpg", "product", "90.000"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Footer()
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.access_time,
                color: Theme.of(context).primaryColor,
                size: 30,
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Theme.of(context).primaryColor,
                size: 30,
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.list_alt_rounded,
                color: Theme.of(context).primaryColor,
                size: 30,
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.person_outline,
                color: Theme.of(context).primaryColor,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
