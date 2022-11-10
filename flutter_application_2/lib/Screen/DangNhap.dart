import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'TrangChu.dart';

class DangNhap extends StatefulWidget {
  const DangNhap({super.key});

  @override
  State<DangNhap> createState() => _DangNhapState();
}

class _DangNhapState extends State<DangNhap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: HexColor('0C205B')),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.cover,
              height: 90,
              width: 160,
            ),
            Container(
                margin: EdgeInsets.only(top: 30, bottom: 40),
                child: Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      'ĐĂNG NHẬP',
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
                      'ĐĂNG NHẬP',
                      style: TextStyle(
                        fontSize: 65,
                        fontFamily: 'FSAriston',
                        color: HexColor('000000'),
                      ),
                    ),
                  ],
                )),
            const Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 280,
                  height: 50,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'FSAriston',
                      fontSize: 25,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                      border: OutlineInputBorder(),
                      hintText: "Tên đăng nhập",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'FSAriston',
                          fontSize: 25),
                    ),
                  ),
                )),
            const Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: 280,
                  height: 50,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'FSAristonAriston',
                      fontSize: 25,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                      border: OutlineInputBorder(),
                      hintText: "Mật khẩu",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'FSAriston',
                          fontSize: 25),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TextButton(
                child: const Text(
                  'Quên mật khẩu',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'FSAriston',
                      fontSize: 20,
                      fontStyle: FontStyle.normal),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor('FFEE52'),
                  minimumSize: Size(280, 25),
                  side: const BorderSide(width: 2, color: Colors.black),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Đăng Nhập',
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
                  MaterialPageRoute(builder: (context) => const TrangChu()),
                );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Bạn chưa có tài khoản??',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'FSAriston',
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Đăng ký ngay',
                      style: TextStyle(
                          color: HexColor('F0CB05'),
                          fontFamily: 'FSAriston',
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    onPressed: () {
                      
              
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}