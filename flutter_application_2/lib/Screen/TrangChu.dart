import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/BatDauChoi.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class TrangChu extends StatefulWidget {
  const TrangChu({super.key});

  @override
  State<TrangChu> createState() => _TrangChuState();
}

class _TrangChuState extends State<TrangChu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bg-1.png'), fit: BoxFit.cover),
      ),
      child: Column(children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(130, 20, 0, 0),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/logo.png'),
                    height: 80,
                    width: 150,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 40, 0, 100),
                  child: Stack(
                    children: [
                      IconButton(
                          onPressed: (() {}),
                          icon: Image.asset(
                            'assets/menu.png',
                            height: 30,
                            width: 30,
                            color: HexColor('FFF323'),
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                width: 200,
                height: 60,
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Image(
                          image: AssetImage('assets/user.png'),
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        Image(
                          image: AssetImage('assets/money.png'),
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          ' 50000',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 238, 82, 100),
                    borderRadius: BorderRadius.circular(6)),
                height: 15,
                width: 50,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          'Cấp ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(60, 15, 0, 0),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/players.png'),
                      iconSize: 50,
                    ),
                    Text(
                      'Giao đấu',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'FSAriston',
                          fontSize: 20),
                    )
                  ],
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/ranking(1).png'),
                      iconSize: 50,
                    ),
                    Text(
                      'Xếp hạng',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'FSAriston',
                          fontSize: 20),
                    )
                  ],
                )),
          ],
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(60, 10, 0, 0),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/job-search.png'),
                      iconSize: 50,
                    ),
                   const Text(
                      'Tìm kiếm',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'FSAriston',
                          fontSize: 20),
                    )
                  ],
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(150, 10, 0, 0),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/analysis.png'),
                      iconSize: 50,
                    ),
                   const Text(
                      'Thống kê',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'FSAriston',
                          fontSize: 20),
                    )
                  ],
                )),
          ],
        ),
        Padding(
              padding: EdgeInsets.only(top: 150),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor('FFEE52'),
                  minimumSize: Size(280, 25),
                  side: const BorderSide(width: 2, color: Colors.black),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Bắt đầu chơi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'FSAriston',
                      color: Colors.black,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BatDauChoi()),
                );
                },
              ),
            ),
      ]),
    ));
  }
}


