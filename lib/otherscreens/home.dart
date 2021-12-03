import 'package:flutter/material.dart';
import 'package:globals/otherscreens/second.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
late TextEditingController _name;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _name=new TextEditingController();

  }
  void onPressed(){
  Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context)=>new Second(_name.text),));
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                 TextField(controller: _name,
                 decoration: InputDecoration(labelText: 'Enter your name'),),
                new RaisedButton(onPressed:onPressed, child: new Text('Next'),)
              ],
            ),
          )
      ),
    );
  }
}