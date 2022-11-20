import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'DangNhap.dart';
import 'package:intl/intl.dart';

class DangKy extends StatefulWidget {
  const DangKy({super.key});


  @override
  State<DangKy> createState() => _DangKyState();
}

class _DangKyState extends State<DangKy> {
    TextEditingController dateinput = TextEditingController(); 
    bool _obscureText = true;
    void _XemMatKhau() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
    void initState() {
    dateinput.text = ""; 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(children:[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: HexColor('0C205B')),
              child: Column( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //margin: EdgeInsets.only(top: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.cover,
                          height: 80,
                          width: 150,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Stack(
                              children: <Widget>[
                                // Stroked text as border.
                                Text(
                                  'ĐĂNG KÝ',
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
                                  'ĐĂNG KÝ',
                                  style: TextStyle(
                                    fontSize: 65,
                                    fontFamily: 'FSAriston',
                                    color: HexColor('000000'),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 280,
                        height: 50,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FSAriston',
                            fontSize: 23,
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
                                fontFamily: 'FSAriston',
                                fontSize: 23),
                          ),
                        ),
                      )),
                   Padding(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 280,
                        height: 50,
                        child: TextField(
                          controller: dateinput,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FSAriston',
                            fontSize: 23,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2)),
                            border: OutlineInputBorder(),
                            hintText: "Ngày sinh",
                            suffixIcon:
                            Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.calendar_month),
                            ),
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'FSAriston',
                                fontSize: 23),
                          ),
                          readOnly: true,
                              onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context, initialDate: DateTime.now(),
                              firstDate: DateTime(1900), 
                              lastDate: DateTime(2100)
                          );   
                          if(pickedDate != null ){
                              print(pickedDate);  
                              String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate); 
                              print(formattedDate); 
                              setState(() {
                              dateinput.text = formattedDate; 
                              });
                          }else{
                              print("Ngày không được chọn");
                          }
                        },
                        ),
                      )),
                  const Padding(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 280,
                        height: 50,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FSAriston',
                            fontSize: 23,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2)),
                            border: OutlineInputBorder(),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'FSAriston',
                                fontSize: 23),
                          ),
                        ),
                      )),
                      const Padding(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 280,
                        height: 50,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FSAriston',
                            fontSize: 23,
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
                                fontSize: 23),
                          ),
                        ),
                      )),
                      Padding(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 280,
                        height: 50,
                        child: TextField(
                          obscureText: _obscureText,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FSAriston',
                            fontSize: 23,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            suffix:InkWell(
                              onTap: _XemMatKhau,
                              child: Icon(
                               _obscureText
                               ?Icons.visibility_off
                               :Icons.visibility
                              ),
                              ),
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
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 280,
                        height: 50,
                        child: TextField(
                            obscureText: _obscureText,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'FSAriston',
                            fontSize: 23,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            suffix:InkWell(
                              onTap: _XemMatKhau,
                              child: Icon(
                               _obscureText
                               ?Icons.visibility_off
                               :Icons.visibility
                              ),
                              ),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2)),
                            border: OutlineInputBorder(),
                            hintText: "Nhập lại mật khẩu",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'FSAriston',
                                fontSize: 23),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor('FFEE52'),
                        minimumSize: Size(280, 20),
                        side: const BorderSide(width: 2, color: Colors.black),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Đăng Ký',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'FSAriston',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Bạn đã có tài khoản??',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'FSAriston',
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          child: Text(
                            'Đăng nhập ngay',
                            style: TextStyle(
                                color: HexColor('F2FA5A'),
                                fontFamily: 'FSAriston',
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DangNhap()),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ))]),)
    );
  }
}


