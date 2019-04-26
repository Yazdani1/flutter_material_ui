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
            margin: EdgeInsets.all(5.0),
            child: new Card(
              elevation: 10.0,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Icon(Icons.search,color: Colors.brown,size: 50.0,),
                        new SizedBox(height: 5.0,),
                        new Text("50k+")
                      ],
                    ),
                  ),
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Icon(Icons.favorite_border,color: Colors.brown,size: 50.0,),
                        new SizedBox(height: 5.0,),
                        new Text("50k+")
                      ],
                    ),
                  ),

                  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Icon(Icons.add,color: Colors.brown,size: 50.0,),
                        new SizedBox(height: 5.0,),
                        new Text("50k+")
                      ],
                    ),
                  ),


                  
                ],
              ),
            ),
          ),//end container
          new SizedBox(height: 10.0,),
          
          new Container(
            margin: EdgeInsets.all(5.0),
            child: new Column(
              children: <Widget>[

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    allData("Product", "50k+"),
                    allData("Food", "50k+"),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    allData("Apple", "60k+"),
                    allData("Flutter", "80k+"),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    allData("Fiveer", "60k+"),
                    allData("Ar kit", "80k+"),
                  ],
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    allData("ios", "10k+"),
                    allData("Upwork", "20k+"),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    allData("ios", "10k+"),
                    allData("Upwork", "20k+"),
                  ],
                ),




              ],
            ),
          )
          

        ],
      ),


    );
  }

  Widget allData(String title,String name){
    return Card(
      elevation: 7.0,
      shape: BeveledRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0)
      ),
      child: new Container(
        height: 150.0,
        width: 150.0,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.search,color: Colors.brown,size: 70.0,),
            new Text(title,style: TextStyle(
              fontSize: 20.0
            ),),
            new SizedBox(height: 7.0,),
            new Text(name,style: TextStyle(color: Colors.black),)

          ],
        ),
      ),
    );
  }

}

