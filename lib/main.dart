import 'package:flutter/material.dart';

import 'button.dart';
import 'buttontapped.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  var icons1 = Icons.home;
  var icons2 = Icons.settings;
  var icons3 = Icons.favorite;
  var icons4 = Icons.message;

  bool buttonPressed1 = false;
  bool buttonPressed2 = false;
  bool buttonPressed3 = false;
  bool buttonPressed4 = false;

  void _letsPress1() {
    setState(() {
      buttonPressed1 = true;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }
  void _letsPress2() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = true;
      buttonPressed3 = false;
      buttonPressed4 = false;
    });
  }
  void _letsPress3() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = true;
      buttonPressed4 = false;
    });
  }
  void _letsPress4() {
    setState(() {
      buttonPressed1 = false;
      buttonPressed2 = false;
      buttonPressed3 = false;
      buttonPressed4 = true;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(18),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(width: 50,),
                  ),

                  Expanded(
                    child: GestureDetector(
                      onTap: _letsPress2,
                      child: buttonPressed2 ? ButtonTapped(icon: icons2,) : MyButton(icon: icons2,) ,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(width: 50,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: EdgeInsets.all(20),
              child:

              Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(   // FIRST BUTTON
                      onTap: _letsPress1,
                      child: buttonPressed1 ? ButtonTapped(icon: icons1,) : MyButton(icon: icons1,)
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(   // SECOND BUTTON
                      onTap: _letsPress2,
                      child: buttonPressed2 ? ButtonTapped(icon: icons2,) : MyButton(icon: icons2,)
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(   // THIRD BUTTON
                      onTap: _letsPress3,
                      child: buttonPressed3 ? ButtonTapped(icon: icons3,) : MyButton(icon: icons3,)
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(   // FOURTH BUTTON
                      onTap: _letsPress4,
                      child: buttonPressed4 ? ButtonTapped(icon: icons4,) : MyButton(icon: icons4,)
                    ),
                  ),
                ],
              )

              ,
            )
          ],
        ),

      ),
    );

  }
}
