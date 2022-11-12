import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/BatDauChoi.dart';
import 'package:flutter_application_2/Screen/GiaoDau.dart';
import 'package:flutter_application_2/Screen/HoSo.dart';
import 'package:flutter_application_2/Screen/ThongKe.dart';
import 'package:flutter_application_2/Screen/XepHang.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../component/menu.dart';

class TrangChu extends StatefulWidget {
  const TrangChu({super.key});

  @override
  State<TrangChu> createState() => _TrangChuState();
}

class _TrangChuState extends State<TrangChu> {
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          key: _sKey,
          endDrawer: Menu(),
          bottomNavigationBar: Container(
            color: HexColor('f9bb40'),
            height: 85,
            child: TabBar(
              labelColor: HexColor('FFEE52'),
              unselectedLabelColor: HexColor('FFEE52'),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(3.0),
              indicatorColor: HexColor('0C205B'),
              indicator: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [HexColor('FFEE52'), Colors.green]),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.redAccent),
              tabs: const <Widget>[
                Tab(
                  icon: Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 50,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.menu_book,
                    size: 50,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: HoSo(),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg-2.png'), fit: BoxFit.cover),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(130, 15, 0, 0),
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
                                        onPressed: () =>
                                            _sKey.currentState?.openEndDrawer(),
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
                                      margin:
                                          EdgeInsets.only(left: 80, top: 12),
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.9),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      height: 35,
                                      width: 160,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 25,
                                        ),
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
                                            image:
                                                AssetImage('assets/user.png'),
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
                                                      fontFamily: 'FSAriston'),
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
                                    onPressed: () {
                                      Navigator.popUntil(
                                          context, (route) => route.isFirst);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const GiaoDau()));
                                    },
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
                              padding: EdgeInsets.fromLTRB(140, 15, 0, 0),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.popUntil(
                                          context, (route) => route.isFirst);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const XepHang()),
                                      );
                                    },
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
                              padding: EdgeInsets.fromLTRB(140, 10, 0, 0),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.popUntil(
                                          context, (route) => route.isFirst);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ThongKe()),
                                      );
                                    },
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
                              minimumSize: Size(300, 25),
                              side: const BorderSide(
                                  width: 2, color: Colors.black),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 8,
                              shadowColor: Colors.amber.withOpacity(0.5)),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
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
                                MaterialPageRoute(
                                    builder: (context) => const BatDauChoi()));
                          },
                        ),
                      ),
                    ]),
              ),
              Center(
                child: Text('Luật chơi'),
              ),
            ],
          ),
        ));
  }
}
