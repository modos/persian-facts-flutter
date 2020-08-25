import 'package:flutter/material.dart';
import 'facts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _counter  = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Persian Facts"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/bg.png",
                width: 256,
                height: 128,
              ),
              Padding(
                padding: EdgeInsets.all(32.0),
                child: Text(facts[_counter] + '.',
                  style: TextStyle(fontSize: 36,),
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                ),
              ),
              RaisedButton(onPressed: () => _nextFact(),
                child: Text("بعدی"),
              ),
            ],
          ),
        )
    );
  }

  _nextFact() {
    setState(() {
      if (_counter < facts.length){
        _counter++;
      }
    });
  }
}
