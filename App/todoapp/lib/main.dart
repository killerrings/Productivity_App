import 'package:flutter/material.dart';
import 'package:todoapp/UI/Intro/intro_page.dart';
import 'models/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Todo app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        color: Colors.yellow,
        home: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(
              children:<Widget>[
                TabBarView(
                children: [
                  IntroPage(),
                  new Container(color: Colors.orange,),
                  new Container(
                    color: Colors.lightGreen,
                  ),
                ],
              ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                    ),
                    color: beigeColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Todos", style: introTitleStyle,),
                      Container()
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.only(top: 90, left: MediaQuery.of(context).size.width*0.5-30),
                  child: FloatingActionButton(
                    child: Icon(Icons.add, size: 50,),
                    backgroundColor: redColor,
                    onPressed: (){},
                  ),
                )
            ]
            ),
            appBar: AppBar(
              elevation: 0,
              title: new TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(Icons.home),
                  ),
                  Tab(
                    icon: new Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: new Icon(Icons.perm_identity),
                  ),
                ],
                labelColor: Colors.black,
                unselectedLabelColor: lightBrownColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.transparent,
              ),
                backgroundColor: beigeColor
            ),
            backgroundColor: Colors.white
          ),
        ),
      ),
    );
  }
}
