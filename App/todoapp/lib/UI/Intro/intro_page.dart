import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkGrayColor,
      child: ListView(
        padding: EdgeInsets.only(top: 250),
        children: getList(),
      ),
    ) ;
  }


  List<Widget> getList(){
    return [
      Container(
        height: 100,
        color: Colors.red,
      ),
      Container(
        height: 100,
        color: Colors.green,
      ),

    ];
  }
}
