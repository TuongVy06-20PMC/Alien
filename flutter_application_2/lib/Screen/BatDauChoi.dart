import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/Screen/KetThucLuotChoi.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'TrangChu.dart';

class BatDauChoi extends StatefulWidget {
  const BatDauChoi({super.key});

  @override
  State<BatDauChoi> createState() => _BatDauChoiState();
}

class _BatDauChoiState extends State<BatDauChoi> {
  Color? color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: HexColor('0C205B')),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    /*border: Border.all(
                    width: 2,
                    color: Colors.white.withOpacity(0.5)
                  ),*/
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: (() {
                                 Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TrangChu()),
                                  );
                              }),
                              icon: Image.asset(
                                'assets/delete.png',
                                height: 25,
                                width: 25,
                                color: HexColor('FFF323'),
                              )),
                          IconButton(
                              onPressed: (){},
                              icon: Image.asset(
                                'assets/menu.png',
                                height: 30,
                                width: 30,
                                color: HexColor('FFF323'),
                              )),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(bottom: 20),
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Column(
                            children: const [
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Câu 1/10',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 25,
                                      color: Colors.white),
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                height: 2.0,
                                thickness: 2,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Tàu Apollo số bao nhiêu được phóng vào ngày 31/1/1971?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              )
                            ],
                          )),
                    ]),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    //padding: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height / 1.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 25, right: 60, bottom: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                      right: 30,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.timelapse,
                                          size: 30,
                                          color: HexColor('FFC600'),
                                        ),
                                        const Text(
                                          '00:00',
                                          style: TextStyle(
                                              //fontFamily: 'FSAriston',
                                              fontSize: 25),
                                        )
                                      ],
                                    )),
                                Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.monetization_on,
                                          size: 30,
                                          color: HexColor('FFC600'),
                                        ),
                                        const Text(
                                          'Số xu',
                                          style: TextStyle(
                                              fontFamily: 'FSAriston',
                                              fontSize: 30),
                                        )
                                      ],
                                    )),
                              ]),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: Size(350, 25),
                              side: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Apollo 11',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'FSAriston',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: Size(350, 25),
                              side: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Apollo 12',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'FSAriston',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: Size(350, 25),
                              side: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Apollo 13',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'FSAriston',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              minimumSize: Size(350, 25),
                              side: const BorderSide(
                                  width: 3, color: Colors.black),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Apollo 14',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'FSAriston',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            /* Padding(padding: EdgeInsets.only(right: 130),
                            child: Column( mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Sai rồi!!!!', style: TextStyle(
                                  fontFamily: 'FSAriston',
                                  fontSize: 25
                                ),),
                                Text('+ 0 xu', style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'FSAriston',
                                  fontSize: 30
                                ),)
                              ],

                            ),
                            ),*/
                            Padding(
                              padding: EdgeInsets.only(right: 22, top: 20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor('F2FA5A'),
                                  minimumSize: Size(80, 10),
                                  side: const BorderSide(
                                      width: 2, color: Colors.black),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Text(
                                    'Tiếp theo >>',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'FSAriston',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const KetThucLuotChoi()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 23),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: HexColor('FF4848'),
                                      minimumSize: Size(80, 80),
                                      /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/50.png',
                                              width: 50,
                                              height: 50,
                                            ),
                                            const Text(
                                              '-100 xu',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontFamily: 'FSAriston',
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )),
                                    onPressed: () {},
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 23),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: HexColor('F037A5'),
                                      minimumSize: Size(80, 80),
                                      /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                    ),
                                    child: Padding(
                                        padding:
                                            EdgeInsets.only(left: 2, right: 2),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/x2.png',
                                              width: 50,
                                              height: 50,
                                            ),
                                            const Text(
                                              '-150 xu',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontFamily: 'FSAriston',
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )),
                                    onPressed: () {},
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: HexColor('3EC70B'),
                                      minimumSize: Size(80, 80),
                                      /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/boqua.png',
                                              width: 48,
                                              height: 48,
                                            ),
                                            const Text(
                                              '-250 xu',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontFamily: 'FSAriston',
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  const Positioned(
                      left: 20,
                      bottom: 450,
                      child: Image(
                        image: AssetImage('assets/monster.png'),
                        height: 100,
                        width: 100,
                      )),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
