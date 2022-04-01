
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(width: 15,),
                    Text("Freeze this card"),
                    Spacer(),
                    FlutterSwitch(
                      width: 60.0,
                      height: 30.0,
                      valueFontSize: 14.0,
                      toggleSize: 25.0,
                      value: true,
                      borderRadius: 20.0,
                      padding: 5.0,
                      showOnOff: true,
                      onToggle: (val) {

                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 15,),
                      Text("Cancel this card"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 15,),
                      Text("Manage Card Limit"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 15,),
                      Text("Manage Card Pin"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 15,),
                      Text("Request supplimentory card"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 15,),
                      Text("Change linked mobile number"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 15,),
                      Text("Change linked account"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 15,),
                      Text("Report stolen or loast card"),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: Text("Close setting"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
