import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class BatDauChoi extends StatefulWidget {
  const BatDauChoi({super.key});

  @override
  State<BatDauChoi> createState() => _BatDauChoiState();
}

class _BatDauChoiState extends State<BatDauChoi> {
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
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
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
                          Icon(
                            Icons.close,
                            size: 40,
                            color: HexColor('FFEE52'),
                          ),
                          Icon(
                            Icons.menu,
                            size: 40,
                            color: HexColor('FFEE52'),
                          )
                        ],
                      ),
                      Container(
                          //padding: EdgeInsets.only(bottom: 10),
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: const Text(
                            'Tàu Apollo số bao nhiêu được phóng vào ngày 31/1/1971?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'FS',
                                fontSize: 25,
                                color: Colors.white),
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
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.timelapse,
                                          size: 30,
                                          color: HexColor('FFEE52'),
                                        ),
                                        const Text(
                                          '00:00',
                                          style: TextStyle(
                                              //fontFamily: 'FS',
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
                                          color: HexColor('FFEE52'),
                                        ),
                                        const Text(
                                          'Số xu',
                                          style: TextStyle(
                                              fontFamily: 'FS', fontSize: 30),
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
                              minimumSize: Size(300, 25),
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
                                  fontFamily: 'FS',
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
                              minimumSize: Size(300, 25),
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
                                  fontFamily: 'FS',
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
                              minimumSize: Size(300, 25),
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
                                  fontFamily: 'FS',
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
                              minimumSize: Size(300, 25),
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
                                  fontFamily: 'FS',
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
                            Padding(
                              padding: EdgeInsets.only(right: 45),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor('FFEE52'),
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
                                      fontFamily: 'FS',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                onPressed: () {},
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
                              padding: EdgeInsets.only(right: 20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor('FFF6A1'),
                                  minimumSize: Size(60, 60),
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
                                            fontFamily: 'FS',
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    )),
                                onPressed: () {},
                              ),
                            ),
                             Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: HexColor('FFF6A1'),
                                  minimumSize: Size(60, 60),
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
                                            fontFamily: 'FS',
                                            color: Colors.red,
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
                                  backgroundColor: HexColor('FFF6A1'),
                                  minimumSize: Size(60, 60),
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
                                            fontFamily: 'FS',
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    )),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        )
                        )
                        
                      ],
                    ),
                  ),
                  const Positioned(
                      left: 30,
                      bottom: 455,
                      child: Image(
                        image: AssetImage('assets/monster.png'),
                        height: 95,
                        width: 95,
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
