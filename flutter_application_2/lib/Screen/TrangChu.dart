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
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 13, left: 80),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20)),
                        height: 35,
                        width: 160,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Row(children: [
                            IconButton(
                                autofocus: false,
                                onPressed: (() {}),
                                icon: Image.asset(
                                  'assets/money.png',
                                  height: 20,
                                  width: 20,
                                )),
                            const Text(
                              'Số xu nè',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'FSAriston',
                                  color: Colors.black),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Container(
                    child: Row(
                      children: [
                        Row(
                          children: const [
                            Image(
                              image: AssetImage('assets/user.png'),
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(left: 44),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: HexColor('FFEE52'),
                              borderRadius: BorderRadius.circular(10)),
                          height: 20,
                          width: 80,
                          child: Padding(
                              padding: EdgeInsets.zero,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Cấp 1',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: 'FSAriston'),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  top: 50,
                ),
              ],
            ),
          ],
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
