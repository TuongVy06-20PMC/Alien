import 'package:flutter/material.dart';
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
                    height: 100,
                    width: 180,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 20, 0, 100),
                  child: Stack(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        color: Colors.black,
                      )
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
                      children: [
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
                padding: EdgeInsets.fromLTRB(50, 15, 0, 0),
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
                          fontWeight: FontWeight.bold,
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
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                )),
          ],
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/job-search.png'),
                      iconSize: 50,
                    ),
                    Text(
                      'Tìm kiếm',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
                      icon: Image.asset('assets/analysis.png'),
                      iconSize: 50,
                    ),
                    Text(
                      'Thống kê',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                )),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: Center(
            child: ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {},
                child: Text(
                  'Bắt đầu chơi',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
          ),
        )
      ]),
    ));
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black,
  primary: Color.fromRGBO(255, 238, 82, 100),
  minimumSize: Size(300, 60),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);
