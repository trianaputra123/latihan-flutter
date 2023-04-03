import 'package:flutter/material.dart';
import 'Detailproduk.dart';

class Daftarproduk extends StatefulWidget {
  const Daftarproduk({Key? key}) : super(key: key);

  @override
  State<Daftarproduk> createState() => _DaftarprodukState();
}

class _DaftarprodukState extends State<Daftarproduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PRODUK VGA CARD")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const DetailProduk(
                  name:
                      "Gigabyte Nvidia GeForce RTX 3070 GAMING OC 8GB - DDR6 - VGA Card",
                  description:
                      "NVIDIA Ampere Streaming Multiprocessors 2nd Generation RT Cores 3rd Generation Tensor Cores Powered by GeForce RTX™ 3070 Integrated with 8GB GDDR6 256-bit memory interface WINDFORCE 3X Cooling System with alternate spinning fans RGB Fusion 2.0 Protection metal back plate",
                  price: 11000000,
                  image: "rtx1.png",
                  star: 1,
                ),
              ));
            },

            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name:
                  "Gigabyte Nvidia GeForce RTX 3070 GAMING OC 8GB - DDR6 - VGA Card",
              description:
                  "NVIDIA Ampere Streaming Multiprocessors 2nd Generation RT Cores 3rd Generation Tensor Cores Powered by GeForce RTX™ 3070 Integrated with 8GB GDDR6 256-bit memory interface WINDFORCE 3X Cooling System with alternate spinning fans RGB Fusion 2.0 Protection metal back plate",
              price: 11000000,
              image: "rtx1.png",
              star: 1,
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name:
                          "MSI GeForce RTX 3050 GAMING X 8GB GDDR6 - VGA Card",
                      description:
                          "Graphics Processing Unit NVIDIA® GeForce RTX™ 3050 Interface PCI Express® Gen 4.0 x8 Cores 2560 Units Core Clocks TBD Memory Speed 14 Gbps Memory 8GB GDDR6 Memory Bus 128-bit",
                      price: 5309000,
                      image: "rtx2.png",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "MSI GeForce RTX 3050 GAMING X 8GB GDDR6 - VGA Card",
                description:
                    "Graphics Processing Unit NVIDIA® GeForce RTX™ 3050 Interface PCI Express® Gen 4.0 x8 Cores 2560 Units Core Clocks TBD Memory Speed 14 Gbps Memory 8GB GDDR6 Memory Bus 128-bit",
                price: 5309000,
                image: "rtx2.png",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name:
                          "ASUS TUF RTX 3070 OC 8GB DDR6 256BIT GAMING NVIDIA VGA CARD",
                      description:
                          "NVIDIA Ampere Streaming Multiprocessors: The building blocks for the world’s fastest, most efficient GPU, the all-new Ampere SM brings 2X the FP32 throughput and improved power efficiency.",
                      price: 10000000,
                      image: "rtx3.png",
                      star: 3),
                ),
              );
            },
            child: ProductBox(
                name:
                    "ASUS TUF RTX 3070 OC 8GB DDR6 256BIT GAMING NVIDIA VGA CARD",
                description:
                    "NVIDIA Ampere Streaming Multiprocessors: The building blocks for the world’s fastest, most efficient GPU, the all-new Ampere SM brings 2X the FP32 throughput and improved power efficiency.",
                price: 10000000,
                image: "rtx3.png",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name:
                          "ASUS KO GeForce RTX 3060 OC 12GB GDDR6 KO-RTX3060-O12G-V2-GAMING VGA Card",
                      description:
                          "2GB GDDR6 192-bit Boost Clock (MHz): 1882 (OC Mode), 1852 (Game Mode) / Memory Speed: 15 Gbps 2 x HDMI, 3 x DisplayPort PCI Express 4.0 x16 Dual Fan Backplate ASUS Aura Sync",
                      price: 10000000,
                      image: "rtx4.jpg",
                      star: 3),
                ),
              );
            },
            child: ProductBox(
                name:
                    "ASUS KO GeForce RTX 3060 OC 12GB GDDR6 KO-RTX3060-O12G-V2-GAMING VGA Card",
                description:
                    "2GB GDDR6 192-bit Boost Clock (MHz): 1882 (OC Mode), 1852 (Game Mode) / Memory Speed: 15 Gbps 2 x HDMI, 3 x DisplayPort PCI Express 4.0 x16 Dual Fan Backplate ASUS Aura Sync",
                price: 10000000,
                image: "rtx4.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name:
                          "VGA ZOTAC GAMING GEFORCE RTX 2080 SUPER AMP 8GB DDR6",
                      description:
                          "GPU GeForce RTX 2080 SUPER CUDA cores 3072 Video Memory 8GB GDDR6 Memory Bus 256-bit Engine Clock Boost 1845 MHz Memory Clock 15.5 Gbps PCI Express 3.0",
                      price: 14000000,
                      image: "rtx5.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "VGA ZOTAC GAMING GEFORCE RTX 2080 SUPER AMP 8GB DDR6",
                description:
                    "GPU GeForce RTX 2080 SUPER CUDA cores 3072 Video Memory 8GB GDDR6 Memory Bus 256-bit Engine Clock Boost 1845 MHz Memory Clock 15.5 Gbps PCI Express 3.0",
                price: 14000000,
                image: "rtx5.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {superkey,
      required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
