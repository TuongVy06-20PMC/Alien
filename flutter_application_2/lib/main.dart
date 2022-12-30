import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gamealien/trangchu.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loading.dart';

Future<void> main(List<String> agrs) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Load();
  }
}

class Load extends StatefulWidget {
  const Load({super.key});

  @override
  State<Load> createState() => _LoadState();
}

class _LoadState extends State<Load> {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _id == "" ? Loading() : TrangChu(),
    );
  }
}
