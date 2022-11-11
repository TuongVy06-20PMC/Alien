import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screen/ChinhSuaHoSo.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class HoSo extends StatefulWidget {
  const HoSo({super.key});

  @override
  State<HoSo> createState() => _HoSoState();
}

class _HoSoState extends State<HoSo> {
  TextEditingController dateinput = TextEditingController();
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg-1.png'), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.cover,
                    height: 90,
                    width: 160,
                  ),
                  Image.asset(
                    'assets/user.png',
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: HexColor('FFEE52'),
                          borderRadius: BorderRadius.circular(6)),
                      height: 20,
                      width: 50,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 4, 3),
                          child: Row(children: [
                            Text(
                              'Cấp 1 ',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'FSAriston'),
                            ),
                          ]))),
                  Container(
                      child: Text('TuongVy2812',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'FSAriston',
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
