import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gamealien/object/User.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ChinhSuaHoSo.dart';
import 'object/level.dart';

class HoSo extends StatefulWidget {
  const HoSo({super.key});

  @override
  State<HoSo> createState() => _HoSoState();
}

class _HoSoState extends State<HoSo> {
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

  @override
  Widget build(BuildContext context) {
    Stream<List<objlevel>> readprofiles() => FirebaseFirestore.instance
        .collection('profiles')
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => objlevel.fromJson(doc.data())).toList());
    Stream<List<Nguoidung>> readuser() => FirebaseFirestore.instance
        .collection('users')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Nguoidung.fromJson(doc.data()))
            .toList());
    Widget builduser(Nguoidung you) {
      if (you.uid == _id) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Container(
                margin: EdgeInsets.only(bottom: 5, top: 65),
                child: Stack(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/btn.png',
                        fit: BoxFit.fill,
                        height: 60,
                        width: 240,
                      )
                    ],
                  ),
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        'Tên Game: ${you.hoten}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'LinotteBold',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    left: 76,
                    top: 7,
                  ),
                ]),
              ),
              onTap: () {},
            ),
            //giao dau

            //xep hang
            // InkWell(
            //   child: Container(
            //     margin:
            //         EdgeInsets.only(bottom: 15),
            //     child: Stack(children: [
            //       Row(
            //         mainAxisAlignment:
            //             MainAxisAlignment
            //                 .center,
            //         crossAxisAlignment:
            //             CrossAxisAlignment
            //                 .center,
            //         children: [
            //           Image.asset(
            //             'assets/btn.png',
            //             fit: BoxFit.fill,
            //             height: 55,
            //             width: 200,
            //           )
            //         ],
            //       ),
            //       // Positioned(
            //       //   child: Padding(
            //       //     padding:
            //       //         EdgeInsets.all(10),
            //       //     child: Text(
            //       //       data['ngaysinh']
            //       //           .toString(),
            //       //       textAlign:
            //       //           TextAlign.center,
            //       //       style: TextStyle(
            //       //         fontSize: 9,
            //       //         fontFamily:
            //       //             'LinotteBold',
            //       //         color: Colors.black,
            //       //       ),
            //       //     ),
            //       //   ),
            //       //   left: 96,
            //       //   top: 7,
            //       // ),
            //     ]),
            //   ),
            //   onTap: () {},
            // ),

            //thống kê
            InkWell(
              child: Container(
                margin: EdgeInsets.only(bottom: 35),
                child: Stack(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/btn.png',
                        fit: BoxFit.fill,
                        height: 60,
                        width: 240,
                      )
                    ],
                  ),
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        'Email: ${you.email} ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'LinotteBold',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    left: 76,
                    top: 7,
                  ),
                ]),
              ),
              onTap: () {},
            ),
          ],
        );
      } else
        return Container();
    }

    Widget buildproflie(objlevel you) {
      if (you.id == _id) {
        return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  IconButton(
                      onPressed: (() {
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) =>
                        //           const TrangChuTabBarGoogle()),
                        // );
                      }),
                      icon: Image.asset(
                        'assets/left-arrow.png',
                        height: 50,
                        width: 50,
                        color: HexColor('FFFFFF'),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/menu.png',
                        height: 40,
                        width: 40,
                        color: HexColor('FFFFFF'),
                      )),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Stack(children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/user.png'),
                  radius: 60.0,
                ),
                Positioned(
                  top: 50,
                  bottom: 0.0,
                  right: 0.0,
                  left: 93,
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ChinhSuaHoSo()));
                    },
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 50),
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
                                    'Cấp ' + you.capdo.toString(),
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
                  top: 50,
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Text(
                you.ten,
                style: TextStyle(
                    fontSize: 23,
                    fontFamily: "LinotteBold",
                    color: Colors.white),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.15,
                      height: MediaQuery.of(context).size.height / 2.8,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/bg-menu.png'),
                              fit: BoxFit.fill)),
                      child: StreamBuilder<List<Nguoidung>>(
                          stream: readuser(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              final users = snapshot.data!;
                              print(users);
                              return ListView(
                                  children: users.map(builduser).toList());
                            } else if (snapshot.hasData) {
                              return Center(
                                child: Text('Có lỗi xảy ra'),
                              );
                            }
                            return CircularProgressIndicator();
                          }),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(top: 70),
                      child: Stack(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/btn.png',
                              fit: BoxFit.fill,
                              height: 60,
                              width: 240,
                            )
                          ],
                        ),
                        Positioned(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Chỉnh sửa',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 35,
                                  fontFamily: 'FSAriston',
                                  color: Colors.black),
                            ),
                          ),
                          left: 115,
                          top: 0,
                        ),
                      ]),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChinhSuaHoSo()),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ]);
      } else {
        return Container();
      }
    }

    return Scaffold(
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
