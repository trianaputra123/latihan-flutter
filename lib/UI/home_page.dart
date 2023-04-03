import 'dart:ui';

import 'package:tugas/UI/Detailproduk.dart';
import 'package:tugas/UI/daftarproduk.dart';
import 'package:tugas/UI/tambahproduk.dart';

import '../widgets/specialist_item.dart';
import '../widgets/doctor_item.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
          switch (i) {
            case 1:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext contect) => Daftarproduk()));
              break;
            // case 2:
            //   Navigator.of(context).pushReplacement(new MaterialPageRoute(
            //       builder: (BuildContext contect) => Person()));
            //   break;
            default:
          }
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black54,
            ),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Triana Putra",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/appimages/th.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 221, 244),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/appimages/promo.jpg",
                      width: 550,
                      height: 200,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "SHOP NOW!!",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          // onTap: () => Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return PakaianPage();
                          // })),
                          child: Container(
                              // width: 150,
                              // height: 35,
                              // padding: const EdgeInsets.all(8.0),
                              // decoration: BoxDecoration(
                              //     color: Colors.redAccent,
                              //     borderRadius: BorderRadius.circular(12.0)),
                              // child: const Center(
                              //   child: Text(
                              //     "Get Started",
                              //     style: TextStyle(
                              //       color: Colors.white,
                              //       fontWeight: FontWeight.w400,
                              //       fontSize: 14,
                              //     ),
                              //   ),
                              // ),
                              ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16),
                height: 64,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(95, 179, 173, 173),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "NEW PRODUCT",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorItem(
                      image: "assets/appimages/rtx1.png",
                      name: "Gigabyte",
                      specialist: "Nvidia GeForce RTX 3070",
                    ),
                    DoctorItem(
                      image: "assets/appimages/rtx2.png",
                      name: "MSI",
                      specialist: "GeForce RTX 3050",
                    ),
                    DoctorItem(
                      image: "assets/appimages/rtx3.png",
                      name: "ASUS TUF",
                      specialist: "RTX 3070",
                    ),
                    DoctorItem(
                      image: "assets/appimages/rtx4.jpg",
                      name: "ASUS KO",
                      specialist: "GeForce RTX 3060",
                    ),
                    DoctorItem(
                      image: "assets/appimages/rtx5.jpg",
                      name: "ZOTAC GAMING",
                      specialist: "GEFORCE RTX 2080",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
