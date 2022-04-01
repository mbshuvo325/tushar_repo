import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:pageviewj/pageviewj.dart';

class DashBoard extends StatelessWidget {
   DashBoard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(top:50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("Total balance"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("700039854"),
                    Text("JOD"),
                  ],
                ),
                Expanded(
                  child: PageViewJ(
                    modifier: const Modifier(viewportFraction: .73),
                    transform: RotateTransform(),
                    itemBuilder: pageViewItem,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
   Widget pageViewItem(BuildContext context, int index) {
     Size size = MediaQuery.of(context).size;
     return Padding(
       padding: const EdgeInsets.all(10.0),
       child: Stack(
         children: [
           Card(
             clipBehavior: Clip.antiAlias,
             shape:
             RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
             child: SizedBox(
               height: size.height * 0.6,
               child: item[index % 3]
             ),
           ),
         ],
       ),
     );
   }

   List<Widget> item = [
    FirstSliderPage(),
     SecondSliderPage(),
     ThirdSliderPage()
   ];
}

class ThirdSliderPage extends StatelessWidget {
  const ThirdSliderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("My Debit Card"),
                  Spacer(),
                  Icon(Icons.wifi)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:25.0),
              child: Text("DIGIBANC"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Text("Omar mansur"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: Text("****8812"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("contactless pay"),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(child: Text("Add money"),),
                  ),
                  Spacer(),
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.settings)),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class SecondSliderPage extends StatelessWidget {
  const SecondSliderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Text("My Credit Card"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:25.0),
              child: Text("DIGIBANC"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Text("Omar mansur"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: Text("****8812"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("148.09 JOD"),
                      Text("DUE BY 7 Nov 2021"),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 45,
                    width: 99,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(child: Text("Pay Now"),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("851.91 JOD"),
                      Text("Available amount"),
                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.settings)),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class FirstSliderPage extends StatelessWidget {
  const FirstSliderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Text("My Account"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:45.0),
              child: Text("Omar Mansur"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("700039854"),
                  Text("JOD"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: Text("available Balance"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("70003985487bjhbgru"),
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.copy)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: Text("Account number"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("70003985487bjhbgru5"),
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.copy)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: Text("IBAN"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width: 105,
                    decoration: BoxDecoration(
                      color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(child: Text("Add money"),),
                  ),
                  Spacer(),
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.share)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
