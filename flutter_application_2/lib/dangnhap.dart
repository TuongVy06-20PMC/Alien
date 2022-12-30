import 'package:flutter_application_2/trangchu.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Dialog/loading.dart';
import 'Dialog/msg.dart';
import 'dangky.dart';
import 'object/User.dart';

class DangNhap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DangNhapState();
  }
}

class DangNhapState extends State<DangNhap> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  Future<void> set_is_logined(String value) async {
    final SharedPreferences cookie = await SharedPreferences.getInstance();
    cookie.setString('is_logined', value);
  }

  Future<void> set_id(String value) async {
    final SharedPreferences cookie = await SharedPreferences.getInstance();
    cookie.setString('id', value);
  }

  Future<List<Nguoidung>> fethuser() async {
    var records = await FirebaseFirestore.instance.collection('users').get();
    final _list = records.docs
        .map((e) => Nguoidung(
            uid: e["uid"],
            email: e["email"],
            password: e['password'],
            tendangnhap: e['tendangnhap'],
            hoten: e['hoten']))
        .toList();
    return _list;
  }

  List<Nguoidung> accounts = [];
  @override
  void initState() {
    fethuser();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<Nguoidung>>(
            future: fethuser(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text("Mất kết nối với máy chủ");
              } else if (snapshot.hasData) {
                return Center(
                    child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      //color: HexColor('0C205B')
                      image: DecorationImage(
                          image: AssetImage('assets/bgg.jpg'),
                          fit: BoxFit.cover)),
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
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: SizedBox(
                            width: 280,
                            height: 52,
                            child: TextField(
                              controller: txtEmail,
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Linotte',
                                fontSize: 20,
                              ),
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2)),
                                border: OutlineInputBorder(),
                                hintText: "Tên Đăng Nhập",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'LinotteBold',
                                    fontSize: 18),
                              ),
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            width: 280,
                            height: 52,
                            child: TextField(
                              obscureText: true,
                              controller: txtPass,
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'LinotteBold',
                                fontSize: 20,
                              ),
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2)),
                                border: OutlineInputBorder(),
                                hintText: "Mật khẩu",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'LinotteBold',
                                    fontSize: 18),
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: TextButton(
                          child: const Text(
                            'Quên mật khẩu',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'LinotteBold',
                              // fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const QuenMatKhau()),
                            // );
                          },
                        ),
                      ),
                      InkWell(
                          child: Container(
                            child: Stack(children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/btn-2.png',
                                    fit: BoxFit.fill,
                                    height: 65,
                                    width: 220,
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
                                        color: Colors.black),
                                  ),
                                ),
                                left: 118,
                                top: 5,
                              ),
                            ]),
                          ),
                          onTap: () async {
                            List<Nguoidung> accountss = snapshot.data!;
                            bool isexist = false;
                            String _id = "";
                            for (var element in accountss) {
                              if (element.tendangnhap == txtEmail.text &&
                                  element.password == txtPass.text) {
                                _id = element.uid;
                                set_is_logined('1');
                                set_id(element.uid);
                                isexist = true;
                              }
                            }
                            if (isexist) {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const TrangChu()));
                            } else {
                              MsgDialog.showMsgDialog(context,
                                  'Email hoặc mật khẩu không đúng vui lòng thử lại');
                            }
                          }),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Bạn chưa có tài khoản??',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Linotte',
                                fontSize: 15,
                              ),
                            ),
                            TextButton(
                              child: Text(
                                'Đăng ký ngay',
                                style: TextStyle(
                                  color: HexColor('f1c500'),
                                  fontFamily: 'LinotteBold',
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DangKy()),
                                );
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ));
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
