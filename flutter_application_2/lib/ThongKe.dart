import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamealien/trangchu.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Alllevel.dart';
import 'HoSo.dart';
import 'components/TrangChuTabBarGoogle.dart';
import 'menu.dart';
import 'object/level.dart';

class ThongKe extends StatefulWidget {
  const ThongKe({super.key});

  @override
  State<ThongKe> createState() => _ThongKeState();
}

class _ThongKeState extends State<ThongKe> {
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
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              //color: HexColor('0C205B')
              image: DecorationImage(
                  image: AssetImage('assets/bgg.jpg'), fit: BoxFit.fill)),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 50, top: 40),
                  child: Image.asset(
                    'assets/logo.png',
                    height: 80,
                    width: 150,
                  ),
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TrangChu()),
                          )
                        },
                        icon: Image.asset(
                          'assets/close-option.png',
                          color: HexColor('FFDE00'),
                        ),
                        iconSize: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          'THỐNG KÊ',
                          style: TextStyle(
                            fontSize: 65,
                            fontFamily: 'FSAriston',
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 5
                              ..color = HexColor('FFEE52'),
                          ),
                        ),
                        // Solid text as fill.
                        Text(
                          'THỐNG KÊ',
                          style: TextStyle(
                            fontSize: 65,
                            fontFamily: 'FSAriston',
                            color: HexColor('000000'),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0, top: 0),
                      child: Container(
                      child: Row(
                        children: [
                          Row(
                            children: const [
                              Image(
                                image: AssetImage('assets/user.png'),
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
                      padding: EdgeInsets.only(left: 0, top: 0),
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
                                          fontSize: 15,
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
                  ],
                ),
              ],
            ),*/
            /* Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 120, top: 0),
                  child: Text(
                    'TuongVie2812',
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'LinotteBold',
                      color: Colors.white),
                  ),
                ),
              ],
            ),*/
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)),
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 40,
                        ),
                        padding: EdgeInsets.all(20),
                        height: 110,
                        width: 300,
                        decoration: BoxDecoration(
                            color: HexColor('FBFACD'),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        "${you.capdo - 1}" + '/10',
                                        style: TextStyle(
                                          fontFamily: 'LinotteBold',
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Icon(
                                      Icons.leaderboard_rounded,
                                      size: 40,
                                    )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Tổng số hành tinh đã hoàn thành',
                                      style: TextStyle(
                                        fontFamily: 'LinotteBold',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      //Tong luot thang giao dau
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        padding: EdgeInsets.all(20),
                        height: 110,
                        width: 300,
                        decoration: BoxDecoration(
                            color: HexColor('FBFACD'),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        '0'.toString(),
                                        style: TextStyle(
                                          fontFamily: 'LinotteBold',
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Icon(
                                      Icons.leaderboard_rounded,
                                      size: 40,
                                    )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Tổng lượt thắng giao đấu',
                                      style: TextStyle(
                                        fontFamily: 'LinotteBold',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      //Tong xu kiem duoc
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        padding: EdgeInsets.all(20),
                        height: 110,
                        width: 300,
                        decoration: BoxDecoration(
                            color: HexColor('FBFACD'),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        "${you.xu}",
                                        style: TextStyle(
                                          fontFamily: 'LinotteBold',
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Icon(
                                      Icons.leaderboard_rounded,
                                      size: 40,
                                    )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Tổng xu kiếm được',
                                      style: TextStyle(
                                        fontFamily: 'LinotteBold',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
                )
              ],
            ),
          ]),
        );
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
