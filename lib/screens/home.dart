import 'package:flutter/material.dart';
import '../code/GlobalState.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
late TextEditingController _name;
GlobalState _store=GlobalState.instance;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _name=new TextEditingController();
    _store.set('name', '');
  _name.text=_store.get('name');
  }
void onPressed(){
  setState(() {
    _store.set('name', _name.text);
  });
  Navigator.of(context).pushNamed('/Second');
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
                TextField(controller: _name,decoration: new InputDecoration(labelText: 'Enter Your Name'),),
                new RaisedButton(onPressed:onPressed, child: new Text('Next'),)
              ],
            ),
          )
      ),
    );
  }
}