import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/Screen/TrangChu.dart';
import 'package:flutter_screen_wake/flutter_screen_wake.dart';
import 'dart:async';
import 'package:hexcolor/hexcolor.dart';
import '../component/menu.dart';

class CaiDat extends StatefulWidget {
  const CaiDat({super.key});

  @override
  State<CaiDat> createState() => _CaiDatState();
}

class _CaiDatState extends State<CaiDat> {
  GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  double brightness =0.0;
  bool toggle=false;

Future<void>initPlatformBrightness()async{
  double bright;
  try{
    bright=await FlutterScreenWake.brightness;
  }
  on PlatformException{
    bright=1.0;
  }
  if(!mounted)return;
  setState(() {
    brightness=bright;
  });
}

  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();
     initPlatformBrightness();
    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _sKey,
      body: Center(
          child: Container(
              decoration: const BoxDecoration(
              image: DecorationImage(
              image: AssetImage('assets/bg-1.png'), fit: BoxFit.cover),
              ),
              child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.cover,
                          height: 90,
                          width: 160,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                
                    ]),
                SizedBox(height: 80,),
                Row(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ), 
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Âm thanh',style: TextStyle(color: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold),),
                          InkWell(
                            radius: 25,
                            child: IconButton(
                            icon: Icon(
                             isPlaying ? Icons.music_note : Icons.music_off,
                             size: 30,
                            ),
                               onPressed: (){
                               if(isPlaying)
                             {
                                 player.pause();
                              }
                              else{
                               player.play(AssetSource('1.mp3'));
                      }
                    },
                  ),
                ),
                        ]
                        ),
                    ), 
                    SizedBox(
                      width: 5,
                    ), 
                    Container(
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: TextButton(
                          child: Text('Ghi cái gì giờ ???',style: TextStyle(fontSize: 20),),
                          onPressed: null,
                          )
                        ) 
                  ], 
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(height: 5,),
                Container(
                  width: 305,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow),
                  child: Row(
              children: [
                AnimatedCrossFade(
              firstChild: Icon(Icons.brightness_7,size: 40,), 
              secondChild: Icon(Icons.brightness_3,size: 40,), 
              crossFadeState: toggle?CrossFadeState.showSecond:CrossFadeState.showFirst, 
              duration: Duration(seconds: 1)  
              ),
            Expanded(
              child: Slider(
                value: brightness,
                onChanged: (value){
                  setState(() {
                    brightness=value;
                  });
                  FlutterScreenWake.setBrightness(brightness);
                  if(brightness==0){
                    toggle=true;
                  }
                  else{
                    toggle=false;
                  }
                },
              )
              ),
              ],
            ),
                ), 
                ]
                )
                )
      )
      )
      );
  }
}