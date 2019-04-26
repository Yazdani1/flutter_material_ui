import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Material Design"),
        backgroundColor: Colors.purple,
      ),

      endDrawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text("Code With Ydc"),
                accountEmail: new Text("ydc@gmail.com"),
              decoration: new BoxDecoration(
                color: Colors.brown
              ),
            ),

            new ListTile(
              title: new Text("First Page"),
              leading: new Icon(Icons.search),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            new ListTile(
              title: new Text("Second Page"),
              leading: new Icon(Icons.cake),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            new ListTile(
              title: new Text("Third Page"),
              leading: new Icon(Icons.add),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            new ListTile(
              title: new Text("Fourth Page"),
              leading: new Icon(Icons.album),
              onTap: (){
                Navigator.of(context).pop();
              },
            )



          ],
        ),
      ),//end drawer

      body: new ListView(
        children: <Widget>[

          new Container(
            height: 100.0,
            margin: EdgeInsets.all(10.0),
            child: new Card(
              elevation: 10.0,
            ),
          )

        ],
      ),


    );
  }
}

