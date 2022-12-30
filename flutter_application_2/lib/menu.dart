import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamealien/dangnhap.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'CaiDat.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Future<void> set_id(String value) async {
    final SharedPreferences cookie = await SharedPreferences.getInstance();
    cookie.setString('id', value);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 130,
            child: DrawerHeader(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 5, 5, 5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/monster-1.png',
                      height: 50,
                      alignment: Alignment.topLeft,
                    ),
                    Text(
                      'Menu',
                      style: TextStyle(
                          fontFamily: 'LinotteBold',
                          fontSize: 23,
                          color: Colors.red),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: HexColor('f3a400'),
                size: 35,
              ),
              title: const Text(
                'Cài đặt',
                style: TextStyle(fontFamily: 'LinotteBold', fontSize: 25),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => CaiDat()));
              },
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: HexColor('f3a400'),
                size: 35,
              ),
              title: const Text(
                'Đăng xuất',
                style: TextStyle(fontFamily: 'LinotteBold', fontSize: 25),
              ),
              onTap: () {
                set_id("");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DangNhap()),
                );
              }),
        ],
      ),
    );
  }
}
