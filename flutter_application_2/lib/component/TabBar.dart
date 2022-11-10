import 'package:flutter/material.dart';
import '../Screen/TrangChu.dart';
import '../Screen/HoSo.dart';
import '../Screen/Luat.dart';

class Tab_Bar extends StatefulWidget {
  const Tab_Bar({super.key});

  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {
  int currentTab=0;
  final List<Widget> screen=[
    HoSo(),
    TrangChu(),
    Luat()
  ];
  final PageStorageBucket bucket =PageStorageBucket();
  Widget currentScreen = HoSo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: (){
                      setState(() {
                        currentScreen=HoSo();
                        currentTab=0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle),
                        Text('Ho so')
                      ],
                    ),
                    ),
                  MaterialButton(
                    onPressed: (){
                      setState(() {
                        currentScreen=TrangChu();
                        currentTab=1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home),
                        
                      ],
                    ),
                    ),
                    MaterialButton(
                    onPressed: (){
                      setState(() {
                        currentScreen=Luat();
                        currentTab=2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle),
                        Text('Luat')
                      ],
                    ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}