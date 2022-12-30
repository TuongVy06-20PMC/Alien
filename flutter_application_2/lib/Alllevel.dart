import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gamealien/object/level.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import "canhan.dart";

class LevelScreen extends StatefulWidget {
  LevelScreen({super.key, required this.ObLevel});
  objlevel ObLevel;
  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              //color: HexColor('0C205B')
              image: DecorationImage(
                  image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
          child: Container(
            margin: EdgeInsets.only(top: 50, left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () => {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           const TrangChuTabBarGoogle()),
                              // )
                              Navigator.pop(context)
                            },
                            icon: Image.asset(
                              'assets/close-option.png',
                              color: HexColor('FFEE52'),
                            ),
                            iconSize: 40,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          'CẤP ĐỘ',
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
                          'CẤP ĐỘ',
                          style: TextStyle(
                            fontSize: 65,
                            fontFamily: 'FSAriston',
                            color: HexColor('000000'),
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(
                    top: 45,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saohaivuong.png',
                                        width: 50,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cấp 1',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Hải Vương',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'Có thể bạn chưa biết?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color: HexColor('614400')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height /2.8,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '- Sao Hải Vương là hành tinh thứ tám và xa nhất tính từ Mặt Trời trong Hệ Mặt Trời.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        ' Nó là hành tinh lớn thứ tư về đường kính và lớn thứ ba về khối lượng',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '- Sao Hải Vương có khối lượng gấp 17 lần khối lượng của Trái Đất và '
                                        'hơi lớn hơn khối lượng của sao Thiên Vương(xấp xỉ bằng 15 lần của Trái Đất).',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh phục',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  if (this
                                                      .widget
                                                      .ObLevel
                                                      .level1) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                             MyWidget(level: 1,you: this.widget.ObLevel,)),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/monster-1.png',
                                              fit: BoxFit.fill,
                                              height: 50,
                                              width: 50,
                                            ),
                                            left: 40,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7.6,
                              width: MediaQuery.of(context).size.height / 7.4,

                              decoration: BoxDecoration(
                                  color: this.widget.ObLevel.level2
                                      ? Colors.white.withOpacity(1)
                                      : Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              // color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saothienvuong.png',
                                        width: 60,
                                      ),
                                      // SizedBox(height: 5,),
                                      Text(
                                        'Cấp 2',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Thiên Vương',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'Có thể bạn chưa biết?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color: HexColor('614400')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '-  Sao Thiên Vương - hành tinh thứ bảy trong Hệ Mặt trời có những đặc điểm vô cùng lạ lùng và thú vị.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Là hành tinh đầu tiên trong Hệ Mặt trời được phát hiện chỉ bằng kính thiên văn.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        '-  Nhà thiên văn học người Đức William Herschel là người phát hiện ra hành tinh này vào năm 1781.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh phục',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  if (this
                                                      .widget
                                                      .ObLevel
                                                      .level2) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyWidget(level: 2,you: this.widget.ObLevel)),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/monster-1.png',
                                              fit: BoxFit.fill,
                                              height: 50,
                                              width: 50,
                                            ),
                                            left: 40,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,
                              decoration: BoxDecoration(
                                  color: this.widget.ObLevel.level3
                                      ? Colors.white.withOpacity(1)
                                      : Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saotho.png',
                                        width: 60,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cấp 3',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Thổ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                    ],
                                  )),
                            ),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'Có thể bạn chưa biết?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color: HexColor('614400')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 2.8,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '- Sao Thổ là một hành tinh khổng lồ, đứng thứ 2 trong hệ mặt trời chỉ sau sao Mộc',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '- Thời gian sao Thổ quay quanh trục rất nhanh. Ngày nay các nhà khoa học thống nhất 1 ngày trên hành tinh này chỉ mất 10 giờ 32 phút 35 giây.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '- Tốc độ tự quay rất nhanh của hành tinh này khiến nó bị mài mòn đến độ có hình cầu dẹt rõ rệt',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh phục',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  if (this
                                                      .widget
                                                      .ObLevel
                                                      .level3) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyWidget(level: 3,you: this.widget.ObLevel)),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/monster-1.png',
                                              fit: BoxFit.fill,
                                              height: 50,
                                              width: 50,
                                            ),
                                            left: 40,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

                              decoration: BoxDecoration(
                                  color: this.widget.ObLevel.level4
                                      ? Colors.white.withOpacity(1)
                                      : Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saomoc.png',
                                        width: 60,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cấp 4',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Mộc',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'Có thể bạn chưa biết?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color: HexColor('614400')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 2.8,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '-  Sao Mộc là hành tinh lớn nhất trong Hệ Mặt trời khi có khối lượng gấp 2,5 lần tất cả hành tinh cộng lại',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Sao Mộc mất 10 giờ để quay hết một vòng quanh trục. Tốc độ tự quay của sao Mộc lớn nhất trong Hệ Mặt trời',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Theo Universe Today, sao Mộc có đường kính ở xích đạo 142,984 km, gấp hơn 11 lần so với Trái đất',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh phục',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  if (this
                                                      .widget
                                                      .ObLevel
                                                      .level4) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyWidget(level: 4,you: this.widget.ObLevel)),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/monster-1.png',
                                              fit: BoxFit.fill,
                                              height: 50,
                                              width: 50,
                                            ),
                                            left: 40,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

                              decoration: BoxDecoration(
                                  color: this.widget.ObLevel.level5
                                      ? Colors.white.withOpacity(1)
                                      : Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              // color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saohoa.png',
                                        width: 65,
                                      ),
                                      // SizedBox(height: 5,),
                                      Text(
                                        'Cấp 5',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Hỏa',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'Có thể bạn chưa biết?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color: HexColor('614400')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 2.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '-  Sao Hỏa là hành tinh gần Trái đất thứ hai và có lẽ là hành tinh được nghiên cứu nhiều nhất trong hệ mặt trời.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Sao Hỏa được gọi là hành tinh đỏ, và bề mặt có màu đỏ là vì đá và đất của sao Hỏa chứa một lượng nhỏ sắt đã bị gỉ sét theo thời gian',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '- Sao Hỏa là nơi có núi lửa lớn nhất trong hệ mặt trời, Olympus Mons. Olympus Mons có đường kính 624km',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh phục',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  if (this
                                                      .widget
                                                      .ObLevel
                                                      .level5) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyWidget(level: 5,you: this.widget.ObLevel)),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/monster-1.png',
                                              fit: BoxFit.fill,
                                              height: 50,
                                              width: 50,
                                            ),
                                            left: 40,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                          ),
                          InkWell(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,
                              decoration: BoxDecoration(
                                  color: this.widget.ObLevel.level6
                                      ? Colors.white.withOpacity(1)
                                      : Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/traidat.png',
                                        width: 65,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cấp 6',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Trái Đất',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                    ],
                                  )),
                            ),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'Có thể bạn chưa biết?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color: HexColor('614400')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '-  Trái đất là hành tinh thứ ba tính từ Mặt trời và là hành tinh lớn nhất trong các hành tinh đất đá',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Là hành tinh duy nhất trong hệ mặt trời không được đặt theo tên của một vị thần Hy Lạp hay La Mã.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Được hình thành khoảng 4,54 tỷ năm trước và là hành tinh duy nhất được biết đến có sự sống. ',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh phục',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  if (this
                                                      .widget
                                                      .ObLevel
                                                      .level6) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyWidget(level: 6,you: this.widget.ObLevel)),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/monster-1.png',
                                              fit: BoxFit.fill,
                                              height: 50,
                                              width: 50,
                                            ),
                                            left: 40,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

                              decoration: BoxDecoration(
                                  color: this.widget.ObLevel.level7
                                      ? Colors.white.withOpacity(1)
                                      : Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/mattrang.png',
                                        width: 58,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cấp 7',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Mặt Trăng',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'Có thể bạn chưa biết?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color:HexColor('614400')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 2.5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '-  Mặt trăng được hình thành là do kết quả của một vụ va chạm được gọi là vụ va chạm lớn (Giant Impact) hay Big Whack.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Mặt trăng mỗi ngày mọc lên muộn hơn so với ngày trước đó trung bình khoảng 50 phút.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Quỹ đạo của Mặt Trăng quay quanh Trái Đất là một hình bầu dục, không phải hình tròn, vì vậy khoảng cách giữa trung tâm Trái đất và trung tâm Mặt trăng thay đổi qua từng quỹ đạo.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh phục',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  if (this
                                                      .widget
                                                      .ObLevel
                                                      .level7) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyWidget(level: 7,you: this.widget.ObLevel)),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/monster-1.png',
                                              fit: BoxFit.fill,
                                              height: 50,
                                              width: 50,
                                            ),
                                            left: 40,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

                              decoration: BoxDecoration(
                                  color: this.widget.ObLevel.level8
                                      ? Colors.white.withOpacity(1)
                                      : Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              // color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saokim.png',
                                        width: 58,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cấp 8',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Kim',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'Có thể bạn chưa biết?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color: HexColor('614400')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '-   Sao Kim là hành tinh thứ hai tính từ Mặt Trời, chỉ sau sao Thủy.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Ngôi sao này có kích thước và khối lượng gần bằng Trái Đất. Mỗi năm sao Kim dài bằng 224,7 ngày Trái Đất. ',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Một ngày của Trái Đất dài 24 giờ, còn một ngày của sao Kim rất dài, bằng 116,75 ngày Trái Đất.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh phục',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  if (this
                                                      .widget
                                                      .ObLevel
                                                      .level8) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyWidget(level: 8,you: this.widget.ObLevel)),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/monster-1.png',
                                              fit: BoxFit.fill,
                                              height: 50,
                                              width: 50,
                                            ),
                                            left: 40,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,
                              decoration: BoxDecoration(
                                  color: this.widget.ObLevel.level9
                                      ? Colors.white.withOpacity(1)
                                      : Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/saothuy.png',
                                        width: 58,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cấp 9',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Sao Thủy',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                    ],
                                  )),
                            ),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'Có thể bạn chưa biết?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color: HexColor('614400')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 2.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '-  Sao Thủy là hành tinh bé nhất trong hệ Mặt trời. Đường kính của hành tinh vào khoảng 4.876 km, tương đương với phần lục địa của Hoa Kỳ và chỉ to hơn một chút so với Mặt trăng.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Nhiệt độ ban ngày ở đây có thể lên tới 840 độ F (450 độ C) còn ban đêm nhiệt độ xuống mức -275 độ F (-170 độ C).',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-   Tốc độ quay của nó là 180.000km/h theo hình ê-líp và điều này khiến nó chỉ mất 88 ngày trên Trái đất để hoàn thành quỹ đạo của mình.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh phục',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  if (this
                                                      .widget
                                                      .ObLevel
                                                      .level9) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyWidget(level: 9,you: this.widget.ObLevel)),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              'assets/monster-1.png',
                                              fit: BoxFit.fill,
                                              height: 50,
                                              width: 50,
                                            ),
                                            left: 40,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: MediaQuery.of(context).size.height / 7.4,
                              width: MediaQuery.of(context).size.height / 7.4,

                              decoration: BoxDecoration(
                                  color: this.widget.ObLevel.level10
                                      ? Colors.white.withOpacity(1)
                                      : Colors.white.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.red,
                              child: Padding(
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/mattroi.png',
                                        width: 63,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Cấp 10',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'LinotteBold'),
                                      ),
                                      Text(
                                        'Mặt Trời',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontFamily: 'LinotteBold'),
                                      )
                                    ],
                                  )),
                            ),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor: HexColor('fcdf69'),
                                title: Text(
                                  'Có thể bạn chưa biết?',
                                  style: TextStyle(
                                      fontFamily: 'FSAriston',
                                      fontSize: 30,
                                      color: HexColor('61481C')),
                                ),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 2.3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '-  Mặt trời chiếm 99,86% khối lượng trong Hệ mặt trời. Khối lượng của Mặt trời lớn hơn so với Trái đất khoảng 330.000 lần.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '-  Mặt trời có thể chứa hàng triệu trái đất. Nếu bên trong Mặt trời hoàn toàn rỗng, có thể lấp đầy nó bằng 960.000 Trái Đất dạng hình cầu và 1.300.000 Trái Đất dạng dẹp (bị ép lại).',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '- Nhiệt độ bên trong Mặt trời có thể đạt đến 15 triệu độ C. Nhiệt độ trên bề mặt của Mặt trời khoảng 5.600 độ Celsius.',
                                        style: TextStyle(
                                            fontFamily: 'LinotteBold',
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                child: Container(
                                                  child: Stack(children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Image.asset(
                                                          'assets/btn.png',
                                                          fit: BoxFit.fill,
                                                          height: 50,
                                                          width: 160,
                                                        )
                                                      ],
                                                    ),
                                                    Positioned(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        child: Text(
                                                          'Chinh phục',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'LinotteBold',
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      top: 13,
                                                      left: 45,
                                                    ),
                                                  ]),
                                                ),
                                                onTap: () {
                                                  if (this
                                                      .widget
                                                      .ObLevel
                                                      .level10) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyWidget(level: 10,you: this.widget.ObLevel)),
                                                    );
                                                  }
                                                },
                                              ),
                                            ],
                                          ),
                                         
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
