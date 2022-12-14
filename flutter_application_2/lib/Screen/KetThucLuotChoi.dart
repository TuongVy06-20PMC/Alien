import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
<<<<<<< HEAD
=======
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_application_2/component/TrangChuTabBarGoogle.dart';
>>>>>>> aa3ef946d295f69f0e9321c2d6d2e91a36043fe1
import 'package:flutter_application_2/Screen/XemlaiDapAn.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'BatDauChoi.dart';

class KetThucLuotChoi extends StatefulWidget {
  const KetThucLuotChoi({super.key});

  @override
  State<KetThucLuotChoi> createState() => _KetThucLuotChoiState();
}

class _KetThucLuotChoiState extends State<KetThucLuotChoi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg-1.png'), fit: BoxFit.cover)),
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: (() {}),
                    icon: Image.asset(
                      'assets/delete.png',
                      height: 25,
                      width: 25,
                      color: HexColor('FFF323'),
                    )),
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
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 34),
                  child: Image.asset(
                    'assets/user.png',
                    height: 90,
                    width: 90,
                  ),
                ),
                Positioned(
                  child: Container(
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
                              'C???p 1',
                              style: TextStyle(
                                  fontSize: 16, fontFamily: 'FSAriston'),
                            ),
                          ],
                        )),
                  ),
                  top: 104,
                  left: 5,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                children: [
                  const Text(
                    'T??n ????ng nh???p',
                    style: TextStyle(
                        fontFamily: 'FSAriston',
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20)),
                      height: 40,
                      width: 140,
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: Row(children: [
                          IconButton(
                              autofocus: false,
                              onPressed: (() {}),
                              icon: Image.asset(
                                'assets/money.png',
                                height: 30,
                                width: 30,
                              )),
                          const Text(
                            'S??? xu n??',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'FSAriston',
                                color: Colors.white),
                          ),
                        ]),
                      ),
                    )
                  ]),
                  Stack(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 30),
                          padding:
                              EdgeInsets.only(left: 60, top: 50, right: 50),
                          //padding: EdgeInsets.all(20),
                          height: MediaQuery.of(context).size.height / 2.7,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'L??m t???t l???m!!!!!!!',
                                    style: TextStyle(
                                        fontFamily: 'FSAriston',
                                        fontSize: 50,
                                        color: HexColor('1BC100')),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'T???ng s??? ??i???m: 800',
                                        style: TextStyle(
                                            fontFamily: 'FSAriston',
                                            fontSize: 25,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        'T???ng s??? c??u ????ng: 8/10',
                                        style: TextStyle(
                                            fontFamily: 'FSAriston',
                                            fontSize: 25,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        'T???ng s??? c??u sai: 2/10',
                                        style: TextStyle(
                                            fontFamily: 'FSAriston',
                                            fontSize: 25,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        'T???ng xu nh???n ???????c: 12034',
                                        style: TextStyle(
                                            fontFamily: 'FSAriston',
                                            fontSize: 25,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Positioned(
                        child: Image.asset(
                          'assets/monster.png',
                          height: 80,
                          width: 80,
                        ),
                        left: 10,
                        bottom: 235,
                      ),
                      Positioned(
                        child: Image.asset(
                          'assets/product-lauch.png',
                          height: 80,
                          width: 80,
                        ),
                        bottom: 10,
                        right: 20,
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor('FFEE52'),
                                  minimumSize: Size(70, 60),
                                  side: const BorderSide(
                                      width: 2, color: Colors.black),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(2),
                                          child: Text(
                                            'Ch??i l???i',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontFamily: 'FSAriston',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/arrow.png',
                                          height: 25,
                                          width: 25,
                                        ),
                                      ],
                                    )),
                                onPressed: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                          backgroundColor: HexColor('FFFDA2'),
                                          title: Text(
                                            'L??u ??',
                                            style: TextStyle(
                                                color: HexColor('F90716'),
                                                fontSize: 35,
                                                fontFamily: 'FSAriston'),
                                          ),
                                          content: const Text(
                                            'Khi b???n ch??i l???i h??? th???ng s??? kh??ng t??nh ??i???m ho???c th?????ng',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'FSAriston',
                                                fontSize: 22),
                                          ),
                                          actions: <Widget>[
                                            Stack(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(25),
                                                      child: TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    HexColor(
                                                                        '0C205B'),
                                                                shadowColor:
                                                                    Colors
                                                                        .white),
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                context,
                                                                'Tho??t'),
                                                        child: Text(
                                                          'Tho??t',
                                                          style: TextStyle(
                                                              color: HexColor(
                                                                  'FFFDA2'),
                                                              fontSize: 23,
                                                              fontFamily:
                                                                  'FSAriston'),
                                                        ),
                                                      ),
                                                    ),
                                                    TextButton(
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  HexColor(
                                                                      '0C205B'),
                                                              shadowColor:
                                                                  Colors.white),
                                                      onPressed: () {
<<<<<<< HEAD
                                                        Navigator.of(context).pop();
=======
                                                        Navigator.of(context)
                                                            .pop();
>>>>>>> aa3ef946d295f69f0e9321c2d6d2e91a36043fe1
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const BatDauChoi()),
                                                        );
                                                      },
                                                      child: Text(
                                                        '?????ng ??',
                                                        style: TextStyle(
                                                            color: HexColor(
                                                                'FFFDA2'),
                                                            fontSize: 23,
                                                            fontFamily:
                                                                'FSAriston'),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Positioned(
                                                  child: Image.asset(
                                                      'assets/monster-1.png'),
                                                  height: 55,
                                                  width: 55,
                                                  left: 40,
                                                  bottom: 29,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ))),
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: HexColor('FFEE52'),
                                    minimumSize: Size(70, 60),
                                    side: const BorderSide(
                                        width: 2, color: Colors.black),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.all(0),
                                      child: Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(2),
                                            child: Text(
                                              'Xem l???i',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 22,
                                                fontFamily: 'FSAriston',
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/eye-open.png',
                                            height: 25,
                                            width: 25,
                                          ),
                                        ],
                                      )),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const XemlaiDapAn()),
                                    );
                                  })),
                          Padding(
                            padding: EdgeInsets.zero,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: HexColor('FFEE52'),
                                minimumSize: Size(70, 60),
                                side: const BorderSide(
                                    width: 2, color: Colors.black),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          'K??? ti???p',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontFamily: 'FSAriston',
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/right-arrow.png',
                                        height: 25,
                                        width: 25,
                                      ),
                                    ],
                                  )),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TrangChuTabBarGoogle()),
                                );
                              },
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
