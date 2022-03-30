import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Application',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontFamily: 'SquadaOne',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Text('Hello World!!',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w700,
              color: Colors.blueGrey[600],
              fontStyle: FontStyle.italic,
              fontFamily: 'Limelight',
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('HEY'),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
