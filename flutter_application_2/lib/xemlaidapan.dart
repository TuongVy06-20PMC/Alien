import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

import 'components/contact_object.dart';

class XemlaiDapAn extends StatefulWidget {
  XemlaiDapAn({super.key, required this.querries});
  List<Querry> querries;
  @override
  State<XemlaiDapAn> createState() => _XemlaiDapAnState();
}

class _XemlaiDapAnState extends State<XemlaiDapAn> {
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  Color? color = Colors.white;
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          //color: HexColor('0C205B')
          image: DecorationImage(
              image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
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
                                Navigator.pop(context);
                              }),
                              icon: Image.asset(
                                'assets/left-arrow.png',
                                height: 50,
                                width: 50,
                                color: HexColor('#FFDE00'),
                              )),
                          IconButton(
                              onPressed: () =>
                                  _sKey.currentState?.openEndDrawer(),
                              icon: Image.asset(
                                'assets/menu.png',
                                height: 40,
                                width: 40,
                                color: HexColor('FFDE00'),
                              )),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(bottom: 20),
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Câu ${i + 1}/10',
                                  style: TextStyle(
                                      fontFamily: 'LinotteBold',
                                      fontSize: 18,
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
                                this.widget.querries[i].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'LinotteBold',
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
                              EdgeInsets.only(top: 65, right: 60, bottom: 60),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: []),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: Size(350, 30),
                                side: BorderSide(
                                    width: 3, color: HexColor('614400')),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                this.widget.querries[i].answers[0].answerText,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Linotte',
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
                                minimumSize: Size(350, 30),
                                side: BorderSide(
                                    width: 3, color: HexColor('614400')),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                this.widget.querries[i].answers[1].answerText,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Linotte',
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
                                minimumSize: Size(350, 30),
                                side: BorderSide(
                                    width: 3, color: HexColor('614400')),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                this.widget.querries[i].answers[2].answerText,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Linotte',
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
                                backgroundColor: HexColor('F48B29'),
                                minimumSize: Size(350, 30),
                                side: BorderSide(
                                    width: 3, color: HexColor('614400')),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                this.widget.querries[i].answers[3].answerText,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Linotte',
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
                            i>0?Padding(
                              padding: EdgeInsets.only(top: 12, right: 20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: Size(50, 20),
                                    side: BorderSide(
                                        width: 3, color: HexColor('614400')),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Quay Lại >>',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'LinotteBold',
                                      color: HexColor('000000'),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  if (i < 10) {
                                    i--;
                                    setState(() {});
                                  }
                                },
                              ),
                            ):Container(),
                            i+1<10?Padding(
                              padding: EdgeInsets.only(top: 12, right: 20),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    minimumSize: Size(50, 20),
                                    side: BorderSide(
                                        width: 3, color: HexColor('614400')),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Tiếp theo >>',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'LinotteBold',
                                      color: HexColor('000000'),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  if (i < 10) {
                                    i++;
                                    setState(() {});
                                  }
                                },
                              ),
                            ):Container(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                      left: 20,
                      bottom: 470,
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
