import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:image_cropper/image_cropper.dart';
import '../component/Select_Photo_Options_Screen.dart';
import '../component/menu.dart';
import 'TrangChu.dart';
class ChinhSuaHoSo extends StatefulWidget {
  const ChinhSuaHoSo({super.key});

  @override
  State<ChinhSuaHoSo> createState() => _ChinhSuaHoSoState();
}

class _ChinhSuaHoSoState extends State<ChinhSuaHoSo> {
TextEditingController dateinput = TextEditingController(); 
 BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
    bool _obscureText = true;
    final ImagePicker _picker=ImagePicker();
     File? _image;

  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File? img = File(image.path);
      img = await _cropImage(imageFile: img);
      setState(() {
        _image = img;
        Navigator.of(context).pop();
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  Future<File?> _cropImage({required File imageFile}) async {
    CroppedFile? croppedImage =
        await ImageCropper().cropImage(sourcePath: imageFile.path);
    if (croppedImage == null) return null;
    return File(croppedImage.path);
  }

  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.28,
          maxChildSize: 0.4,
          minChildSize: 0.28,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: SelectPhotoOptionsScreen(
                onTap: _pickImage,
              ),
            );
          }),
    );
  }

  @override
    void initState() {
    dateinput.text = ""; 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sKey,
      endDrawer: Menu(),
      body: Center(
      child:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg-1.png'), fit: BoxFit.cover
                      ),
                ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ 
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: (() {
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TrangChu()),
                );
                    }),
                    icon: Image.asset(
                      'assets/delete.png',
                      height: 25,
                      width: 25,
                      color: HexColor('FFF323'),
                    )),
                IconButton(
                    onPressed: ()=>_sKey.currentState?.openEndDrawer(),
                    icon: Image.asset(
                      'assets/menu.png',
                      height: 30,
                      width: 30,
                      color: HexColor('FFF323'),
                    )),
              ],
            ),
            SizedBox(height: 40,),
            Stack(
          children: <Widget>[
           
             _image == null
                                ? CircleAvatar(
                                    backgroundImage: AssetImage('assets/user.png'),
                                    radius: 50.0,
                                  )
                                : CircleAvatar(
                                    backgroundImage: FileImage(_image!),
                                    radius: 50.0,
                                  ),
            Positioned(
              top: 60,
              bottom: 0.0,
              right: 0.0,
              left: 80,
              child:InkWell(
                onTap: (){
                  _showSelectPhotoOptions(context);
                },
                child: Icon(
                Icons.camera_alt,
                color: Colors.teal,
                size: 30.0,
              ),
              ),
            ),
            
        ],
        ),
          SizedBox(height: 30),    
          SizedBox(
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
                             prefixIcon:Icon(
                              Icons.person,
                              color: Colors.green,
                            ),
                            hintText: "Tên đăng nhập",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'FSAriston',
                                fontSize: 23),
                          ),
                        ),),
            SizedBox(height: 10),    
        SizedBox(
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
                            prefixIcon:
                            Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.calendar_month,color: Colors.green,),
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
                        ),),
           SizedBox(height: 10),    
          SizedBox(
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
                             prefixIcon:Icon(
                              Icons.mail,
                              color: Colors.green,
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'FSAriston',
                                fontSize: 23),
                          ),
                        ),),
                        SizedBox(height: 10),
                        ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor('FFEE52'),
                        minimumSize: Size(100, 10),
                        side: const BorderSide(width: 2, color: Colors.black),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Lưu thay đổi',
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
          ],
        ),
      )
      )
      );
  }  
}



