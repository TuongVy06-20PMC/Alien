import 'package:flutter/material.dart';
import 'package:gamealien/HoSo.dart';
import 'package:gamealien/object/level.dart';
import 'package:gamealien/xephang.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Alllevel.dart';
import 'ThongKe.dart';
import 'TimKiem.dart';
import 'menu.dart';

class TrangChu extends StatefulWidget {
  const TrangChu({super.key});

  @override
  State<TrangChu> createState() => _TrangChuState();
}

class _TrangChuState extends State<TrangChu> {
  String _id = "";
  get_id() async {
    final SharedPreferences cookie = await SharedPreferences.getInstance();
    _id = cookie.getString('id') != null ? cookie.getString('id')! : '';
    setState(() {});
  }

  @override
  void initState() {
    get_id();
    super.initState();
  }

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Stream<List<objlevel>> readprofiles() => FirebaseFirestore.instance
        .collection('profiles')
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => objlevel.fromJson(doc.data())).toList());
    Widget buildproflie(objlevel you) {
      if (you.id == _id) {
        return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(130, 10, 0, 0),
                child: Column(
                  children: const [
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
                    padding: const EdgeInsets.fromLTRB(50, 50, 0, 60),
                    child: Stack(
                      children: [
                        IconButton(
                            onPressed: () =>
                                _sKey.currentState?.openEndDrawer(),
                            icon: Image.asset(
                              'assets/menu.png',
                              height: 40,
                              width: 40,
                              color: HexColor('ffffff'),
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
                  Container(
                    width: 200,
                    height: 120,
                  ),
                  Positioned(
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 80, top: 12),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(20)),
                          height: 35,
                          width: 160,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 35,
                            ),
                            child: Row(children: [
                              Container(
                                width: 20,
                                height: 20,
                              ),
                              Text(
                                // data['xu'].toString(),
                                "${you.ten}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'LinotteBold',
                                    color: Colors.black),
                              ),
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HoSo()));
                    },
                    child: Padding(
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
                  ),
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(left: 44),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('FFEE52'),
                                borderRadius: BorderRadius.circular(15)),
                            height: 25,
                            width: 100,
                            child: Padding(
                                padding: EdgeInsets.zero,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      //data['cap'].toString()
                                      'Cấp ${you.capdo}',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'LinotteBold'),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    top: 60,
                  ),
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(left: 55),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 102, 219, 106),
                                borderRadius: BorderRadius.circular(10)),
                            height: 20,
                            width: 80,
                            child: Padding(
                                padding: EdgeInsets.zero,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/money.png',
                                      height: 10,
                                      width: 10,
                                    ),
                                    Text(
                                      //data['cap'].toString()
                                      '${you.xu}',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'LinotteBold'),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    top: 88,
                  ),
                ],
              ),
            ],
          ),
          /*InkWell(
                                child: Container(
                                  margin: EdgeInsets.only(top: 40, bottom: 40),
                                  child: Stack(children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/button-1.png',
                                          fit: BoxFit.fill,
                                          height: 70,
                                          width: 260,
                                        )
                                      ],
                                    ),
                                    Positioned(
                                      child: Padding(
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
                                      left: 120,
                                      top: 8,
                                    ),
                                  ]),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const BatDauChoi()),
                                  );
                                },
                              ),*/
          Column(
            children: [
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.15,
                  height: MediaQuery.of(context).size.height / 1.8,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/bg-menu.png'),
                          fit: BoxFit.fill)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5, top: 40),
                          child: Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/btn.png',
                                  fit: BoxFit.fill,
                                  height: 60,
                                  width: 200,
                                )
                              ],
                            ),
                            Positioned(
                              child: Padding(
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
                              left: 100,
                              top: 2,
                            ),
                          ]),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LevelScreen(
                                      ObLevel: you,
                                    )),
                          );
                        },
                      ),
                      //giao dau
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/btn.png',
                                  fit: BoxFit.fill,
                                  height: 60,
                                  width: 200,
                                )
                              ],
                            ),
                            Positioned(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Giao đấu',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              left: 115,
                              top: 2,
                            ),
                          ]),
                        ),
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) =>
                          //           const TimTran()),
                          // );
                        },
                      ),

                      //xep hang
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/btn.png',
                                  fit: BoxFit.fill,
                                  height: 60,
                                  width: 200,
                                )
                              ],
                            ),
                            Positioned(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Xếp hạng',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              left: 115,
                              top: 2,
                            ),
                          ]),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => XepHang()),
                          );
                        },
                      ),

                      //thống kê
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/btn.png',
                                  fit: BoxFit.fill,
                                  height: 60,
                                  width: 200,
                                )
                              ],
                            ),
                            Positioned(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Thống kê',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              left: 115,
                              top: 2,
                            ),
                          ]),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ThongKe()),
                          );
                        },
                      ),

                      //tìm kiếm
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Stack(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/btn.png',
                                  fit: BoxFit.fill,
                                  height: 60,
                                  width: 200,
                                )
                              ],
                            ),
                            Positioned(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Tìm kiếm',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'FSAriston',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              left: 116,
                              top: 2,
                            ),
                          ]),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TimKiem()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ]);
      } else {
        return Container();
      }
    }

    return Scaffold(
      key: _sKey,
      endDrawer: Menu(),
      body: ListView(children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                //color: HexColor('0C205B')
                image: DecorationImage(
                    image: AssetImage('assets/bgg.jpg'), fit: BoxFit.fill)),
            child: StreamBuilder<List<objlevel>>(
                stream: readprofiles(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final users = snapshot.data!;
                    print(users);
                    return ListView(children: users.map(buildproflie).toList());
                  } else if (snapshot.hasData) {
                    return Center(
                      child: Text('Có lỗi xảy ra'),
                    );
                  }
                  return CircularProgressIndicator();
                })),
      ]),
    );
  }
}
