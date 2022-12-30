import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gamealien/components/contact_object.dart';
import 'package:gamealien/xemlaidapan.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

import 'canhan.dart';
import 'object/level.dart';

class KetThucLuotChoi extends StatefulWidget {
  KetThucLuotChoi(
      {super.key,
      required this.score,
      required this.qrfalse,
      required this.qrtrue,
      required this.level,
      required this.you,
      required this.total,
      required this.gold,
      required this.querries});
  int score;
  int qrtrue;
  int total;
  int qrfalse;
  int level;
  objlevel you;
  int gold;
  List<Querry> querries;
  @override
  State<KetThucLuotChoi> createState() => _KetThucLuotChoiState();
}

class _KetThucLuotChoiState extends State<KetThucLuotChoi> {
  Future<objlevel> update() async {
    final data = await FirebaseFirestore.instance
        .collection('profiles')
        .doc("${this.widget.you.id}");
    final snap = await data.get();
    final prf = objlevel.fromJson(snap.data()!);
    Random random = new Random();
    int randomNumber = random.nextInt(150) + 90;
    randomNumber += this.widget.gold;
    print("${this.widget.you.id}");
    print("${this.widget.score}");

    if (this.widget.score > 150) {
      if (this.widget.you.capdo <= this.widget.level) {
        int _total = this.widget.total + this.widget.score;
        print(_total);
        data.update({
          'total': _total,
          'capdo': this.widget.level + 1,
          'level${this.widget.level + 1}': true,
          'score${this.widget.level}': this.widget.score,
          'xu': randomNumber
        });
      } else {
        data.update({'gold': randomNumber});
      }
    }
    return prf;
  }

  @override
  void initstate() {
    update();
    print("${this.widget.you.id}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
          child: FutureBuilder(
              future: update(),
              builder:
                  (BuildContext context, AsyncSnapshot<objlevel> snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Kết nối có lỗi"),
                  );
                } else if (snapshot.hasData) {
                  return Container(
                    decoration: BoxDecoration(
                        //color: HexColor('0C205B')
                        image: DecorationImage(
                            image: AssetImage('assets/background.jpg'),
                            fit: BoxFit.cover)),
                    child: Container(
                      margin: EdgeInsets.only(top: 40, left: 15, right: 15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () =>
                                            {Navigator.pop(context),
                                            Navigator.pop(context)},
                                        icon: Image.asset(
                                          'assets/close-option.png',
                                          color: HexColor('ffe325'),
                                        ),
                                        iconSize: 40,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 60,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                           margin: EdgeInsets.only(top: 70),
                                          padding: EdgeInsets.only(
                                              left: 60, top: 15, right: 50),
                                          //padding: EdgeInsets.all(20),
                                          height: MediaQuery.of(context)
                                              .size
                                              .height/2.5,
                                          width:
                                              MediaQuery.of(context).size.width/1.2,
                                              
                                          decoration:  BoxDecoration(
                                           
                                              color: HexColor('FEF9A7'),
                                              
                                              borderRadius: BorderRadius.all(Radius.circular(30))),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Positioned(
                                                        child: Image.asset(
                                                          'assets/btn-2.png',
                                                          width: 200,

                                                          //height: 60,
                                                        ),
                                                        
                                                      ),
                                                      Positioned(
                                                        child: Text(
                                                          'LEVEL ${this.widget.level}',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              fontSize: 27),
                                                        ),
                                                        left: 52,
                                                        bottom: 19,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      this.widget.score >= 150
                                                          ? 'Làm tốt lắm!!'
                                                          : "Thất Bại",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'FSAriston',
                                                          fontSize: 45,
                                                          color: HexColor(
                                                              '001253'),
                                                          shadows: [
                                                            Shadow(
                                                                blurRadius: 5,
                                                                color: Colors
                                                                    .white,
                                                                offset: Offset(
                                                                    2.0, 2.5))
                                                          ]),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 10, top: 15),
                                                    child: Text(
                                                      'Tổng số điểm: ${this.widget.score}',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'LinotteBold',
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 10),
                                                    child: Text(
                                                      'Số câu đúng: ${this.widget.qrtrue}/10',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'LinotteBold',
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 10),
                                                    child: Text(
                                                      'Số câu sai: ${this.widget.qrfalse}/10',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'LinotteBold',
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 10),
                                                    child: Text(
                                                      (this.widget.score >=
                                                                  150 &&
                                                              this
                                                                      .widget
                                                                      .you
                                                                      .capdo <=
                                                                  this
                                                                      .widget
                                                                      .level)
                                                          ? 'Cấp : +1'
                                                          : "Cấp : +0",
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'LinotteBold',
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )),
                                    ],
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 160),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        HexColor('22dced'),
                                                    minimumSize: Size(70, 70),
                                                    side: BorderSide(
                                                        width: 3,
                                                        color:
                                                            HexColor('FFFFFF')),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                child: Padding(
                                                    padding: EdgeInsets.all(0),
                                                    child: Row(
                                                      children: [
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.all(2),
                                                          child: Text(
                                                            'Chơi lại',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            MyWidget(
                                                                level: this
                                                                    .widget
                                                                    .level,
                                                                you: this
                                                                    .widget
                                                                    .you)),
                                                  );
                                                }),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    HexColor('bcf33d'),
                                                side: BorderSide(
                                                    width: 3,
                                                    color: HexColor('FFFFFF')),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                minimumSize: Size(70, 70),
                                                /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                              ),
                                              child: Padding(
                                                  padding: EdgeInsets.all(2),
                                                  child: Column(
                                                    children: [
                                                      /* Image.asset(
                                              'assets/eye-open.png',
                                              width: 30,
                                              height: 30,
                                            ),*/
                                                      Text(
                                                        'Xem lại',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontFamily:
                                                              'LinotteBold',
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          XemlaiDapAn(
                                                              querries: this
                                                                  .widget
                                                                  .querries)),
                                                );
                                              },
                                            ),
                                          ),
                                          Padding(
                                            
                                            padding: EdgeInsets.zero,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  
                                                  backgroundColor:
                                                      HexColor('e82be5'),
                                                  side: BorderSide(
                                                      width: 3,
                                                      color:
                                                          HexColor('FFFFFF')),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  minimumSize: Size(70, 70),
                                                  /*side: const BorderSide(
                                      width: 2, color: Colors.black),*/
                                                ),
                                                child: Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: Column(
                                                      children: [
                                                        /* Image.asset(
                                              'assets/eye-open.png',
                                              width: 30,
                                              height: 30,
                                            ),*/
                                                        const Text(
                                                          'Kế tiếp',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            fontFamily:
                                                                'LinotteBold',
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                                onPressed: () {
                                                  if (this.widget.score < 150) {
                                                    showDialog<String>(
                                                      context: context,
                                                      builder: (BuildContext
                                                              context) =>
                                                          AlertDialog(
                                                        backgroundColor:
                                                            HexColor('fde787'),
                                                        title: Stack(
                                                          children: [
                                                            Text(
                                                              '| Lưu ý',
                                                              style: TextStyle(
                                                                  color: HexColor(
                                                                      '614400'),
                                                                  fontSize: 38,
                                                                  fontFamily:
                                                                      'FSAriston'),
                                                            ),
                                                            Positioned(
                                                              child: IconButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  icon: Image
                                                                      .asset(
                                                                    'assets/close-option.png',
                                                                    height: 30,
                                                                    width: 30,
                                                                    color: HexColor(
                                                                        '614400'),
                                                                  )),
                                                              left: 210,
                                                              bottom: 1,
                                                            ),
                                                          ],
                                                        ),
                                                        content: const Text(
                                                          'Bạn chưa đủ điều kiện để đi tiếp vui lòng chơi lại và đạt ít nhất 5 câu hỏi đúng để đi tiếp level tiếp theo',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              fontSize: 22),
                                                        ),
                                                        actions: <Widget>[
                                                          Stack(
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  InkWell(
                                                                    child:
                                                                        Container(
                                                                      child: Stack(
                                                                          children: [
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Image.asset(
                                                                                  'assets/btn-2.png',
                                                                                  fit: BoxFit.fill,
                                                                                  height: 50,
                                                                                  width: 120,
                                                                                )
                                                                              ],
                                                                            ),
                                                                            Positioned(
                                                                              child: Padding(
                                                                                padding: EdgeInsets.zero,
                                                                                child: Text(
                                                                                  'Đồng ý',
                                                                                  textAlign: TextAlign.center,
                                                                                  style: TextStyle(fontSize: 20, fontFamily: 'LinotteBold', color: Colors.black),
                                                                                ),
                                                                              ),
                                                                              top: 12,
                                                                              left: 28,
                                                                            ),
                                                                          ]),
                                                                    ),
                                                                    
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    );
                                                  } else {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyWidget(
                                                                  level: this
                                                                          .widget
                                                                          .level +
                                                                      1,
                                                                  you: this
                                                                      .widget
                                                                      .you)),
                                                    );
                                                  }
                                                }),
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ]),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
    );
  }
}
