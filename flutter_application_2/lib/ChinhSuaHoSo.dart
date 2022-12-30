import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HoSo.dart';
import 'object/User.dart';
import 'object/level.dart';

class ChinhSuaHoSo extends StatefulWidget {
  const ChinhSuaHoSo({super.key});

  @override
  State<ChinhSuaHoSo> createState() => _ChinhSuaHoSoState();
}

class _ChinhSuaHoSoState extends State<ChinhSuaHoSo> {
  TextEditingController dateinput = TextEditingController();
  final txtHoten = TextEditingController();
  final txtTendn = TextEditingController();
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
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
    Widget builduser(objlevel you) {
      if (you.id == _id) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: (() {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const TrangChuTabBarGoogle()),
                      // );
                    }),
                    icon: Image.asset(
                      'assets/left-arrow.png',
                      height: 50,
                      width: 50,
                      color: HexColor('#FFDE00'),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/menu.png',
                      height: 40,
                      width: 40,
                      color: HexColor('FFDE00'),
                    )),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/user.png'),
                  radius: 50.0,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              you.ten,
              style: TextStyle(
                  fontSize: 23, fontFamily: "LinotteBold", color: Colors.white),
            ),
            SizedBox(height: 60),
            Padding(
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  width: 280,
                  height: 52,
                  child: TextField(
                    controller: txtTendn,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Linotte',
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                      border: OutlineInputBorder(),
                      hintText: "Tên game",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Linotte',
                          fontSize: 18),
                    ),
                  ),
                )),
            SizedBox(height: 10),
                  Padding(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 280,
                        height: 52,
                        child: TextField(
                          controller: dateinput,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Linotte',
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2)),
                            border: OutlineInputBorder(),
                            hintText: "Ngày sinh",
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(Icons.calendar_month),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Linotte',
                                fontSize: 18),
                          ),
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            if (pickedDate != null) {
                              print(pickedDate);
                              String formattedDate =
                                  DateFormat('dd-MM-yyyy').format(pickedDate);
                              print(formattedDate);
                              setState(() {
                                dateinput.text = formattedDate;
                              });
                            } else {
                              print("Ngày không được chọn");
                            }
                          },
                        ),
                      )),
            SizedBox(height: 10),
             Padding(
                 padding: EdgeInsets.all(5),
                 child: SizedBox(
                   width: 280,
                   height: 52,
                   child: TextField(
                     controller: txtHoten,
                     style: TextStyle(
                       color: Colors.black,
                       fontFamily: 'Linotte',
                       fontSize: 20,
                     ),
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Colors.white,
                       enabledBorder: OutlineInputBorder(
                           borderSide:
                               BorderSide(color: Colors.black, width: 2)),
                       border: OutlineInputBorder(),
                       hintText: "Họ tên",
                       hintStyle: TextStyle(
                           color: Colors.grey,
                           fontFamily: 'Linotte',
                           fontSize: 18),
                     ),
                   ),
                 )),
            SizedBox(height: 10),
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
                          width: 215,
                        )
                      ],
                    ),
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Lưu thay đổi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'FSAriston',
                              color: Colors.black),
                        ),
                      ),
                      left: 102,
                      top: 4,
                    ),
                  ]),
                ),
                onTap: () {
                  if (txtTendn.text == null || txtTendn.text == "") {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        backgroundColor: HexColor('fde787'),
                        title: Stack(
                          children: [
                            Text(
                              'Thông báo!!!',
                              style: TextStyle(
                                  color: HexColor('f4a000'),
                                  fontSize: 35,
                                  fontFamily: 'FSAriston'),
                            ),
                            Positioned(
                              child: IconButton(
                                  onPressed: (() {
                                    Navigator.pop(context);
                                  }),
                                  icon: Image.asset(
                                    'assets/close-option.png',
                                    height: 30,
                                    width: 30,
                                  )),
                              left: 190,
                              bottom: 1,
                            ),
                          ],
                        ),
                        content: const Text(
                          'Bạn chưa điền thông tin.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'LinotteBold', fontSize: 22),
                        ),
                      ),
                    );
                  } else if (txtTendn.text.length > 10) {
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              backgroundColor: HexColor('fde787'),
                              title: Stack(
                                children: [
                                  Text(
                                    'Thông báo!!!',
                                    style: TextStyle(
                                        color: HexColor('f4a000'),
                                        fontSize: 35,
                                        fontFamily: 'FSAriston'),
                                  ),
                                  Positioned(
                                    child: IconButton(
                                        onPressed: (() {
                                          Navigator.pop(context);
                                        }),
                                        icon: Image.asset(
                                          'assets/close-option.png',
                                          height: 30,
                                          width: 30,
                                        )),
                                    left: 190,
                                    bottom: 1,
                                  ),
                                ],
                              ),
                              content: const Text(
                                'Tên không quá 10 ký tự..',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'LinotteBold', fontSize: 22),
                              ),
                            ));
                  } else {
                    final doc = FirebaseFirestore.instance
                        .collection('profiles')
                        .doc("$_id");
                    String name = txtTendn.text;
                    doc.update({'ten': name});
                    final doc1 = FirebaseFirestore.instance
                        .collection('users')
                        .doc("$_id");
                    String name1 = txtTendn.text;
                    doc1.update({'hoten': name});
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HoSo()));
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              backgroundColor: HexColor('fde787'),
                              title: Stack(
                                children: [
                                  Text(
                                    'Thông báo!!!',
                                    style: TextStyle(
                                        color: HexColor('f4a000'),
                                        fontSize: 35,
                                        fontFamily: 'FSAriston'),
                                  ),
                                  Positioned(
                                    child: IconButton(
                                        onPressed: (() {
                                          Navigator.pop(context);
                                        }),
                                        icon: Image.asset(
                                          'assets/close-option.png',
                                          height: 30,
                                          width: 30,
                                        )),
                                    left: 190,
                                    bottom: 1,
                                  ),
                                ],
                              ),
                              content: const Text(
                                'Đã thay đổi tên game.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'LinotteBold', fontSize: 22),
                              ),
                            ));
                  }
                }),
          ],
        );
      } else {
        return Container();
      }
    }

    return Scaffold(
        body: Center(
            child: ListView(children: [
      Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bgg.jpg'), fit: BoxFit.cover),
        ),
        child: StreamBuilder<List<objlevel>>(
            stream: readprofiles(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final users = snapshot.data!;
                print(users);
                return ListView(children: users.map(builduser).toList());
              } else if (snapshot.hasData) {
                return Center(
                  child: Text('Có lỗi xảy ra'),
                );
              }
              return CircularProgressIndicator();
            }),
      )
    ])));
  }
}
