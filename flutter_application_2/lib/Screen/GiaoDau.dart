import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/BatDauChoi.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../component/menu.dart';

class GiaoDau extends StatefulWidget {
  const GiaoDau({super.key});

  @override
  State<GiaoDau> createState() => _GiaoDauState();
}

class _GiaoDauState extends State<GiaoDau> {
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sKey,
      endDrawer: Menu(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg2.png'), fit: BoxFit.cover),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.popUntil(context, (route) => route.isFirst);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TrangChu()));
                        },
                        icon: Image.asset('assets/delete.png'))
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/logo.png'),
                      height: 100,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              )),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 30, 0),
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () => _sKey.currentState?.openEndDrawer(),
                        icon: Image.asset('assets/menu.png'))
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
                  color: Color.fromRGBO(217, 217, 217, 170),
                  height: 600,
                  width: 350,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 30, top: 20),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Row(
                                          children: const [
                                            Image(
                                              image:
                                                  AssetImage('assets/user.png'),
                                              height: 80,
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
                                    padding: EdgeInsets.only(left: 30, top: 20),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: HexColor('FFEE52'),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          height: 20,
                                          width: 80,
                                          child: Padding(
                                              padding: EdgeInsets.zero,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Cấp 1',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            'FSAriston'),
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  top: 60,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10, top: 100),
                                  child: Text(
                                    'TuongVie2812',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: 'FSAriston',
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 30,
                              ),
                              child: Text(
                                'Hãy tìm trận',
                                style: TextStyle(
                                    fontSize: 30, fontFamily: 'FSAriston'),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/match.png'),
                              height: 200,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(20, 65, 0, 0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: HexColor('FFEE52'), // background
                                    onPrimary: Colors.white,
                                    side: BorderSide(
                                        width: 1, color: Colors.white),
                                    minimumSize: Size(150, 50) // foreground
                                    ),
                                onPressed: () {},
                                child: Text(
                                  'Tìm trận',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'FSAriston',
                                    fontSize: 30,
                                  ),
                                ),
                              )),
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.only(top: 65),
                            child: Image(
                              image: AssetImage('assets/search_alien.png'),
                              height: 150,
                            ),
                          ))
                        ],
                      )
                    ],
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
