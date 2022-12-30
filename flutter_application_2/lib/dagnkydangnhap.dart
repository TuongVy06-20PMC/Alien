import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'DangNhap.dart';
import 'dangky.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              //color: HexColor('0C205B')
              image: DecorationImage(
                  image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
          child: Container(
            margin: EdgeInsets.only(top: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 100),
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover,
                    height: 140,
                    width: 250,
                  ),
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Stack(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/btn-2.png',
                            fit: BoxFit.fill,
                            height: 70,
                            width: 240,
                          )
                        ],
                      ),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Đăng Ký',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'FSAriston',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        left: 130,
                        top: 5,
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DangKy()),
                    );
                  },
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5, top: 15),
                    child: Stack(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/btn-2.png',
                            fit: BoxFit.fill,
                            height: 70,
                            width: 240,
                          )
                        ],
                      ),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Đăng Nhập',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'FSAriston',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        left: 120,
                        top: 6,
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DangNhap()),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
