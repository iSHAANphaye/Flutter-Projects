import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: id_project(),
  ));
}

// ignore: camel_case_types
class id_project extends StatefulWidget {
  @override
  _id_projectState createState() => _id_projectState();
}

// ignore: camel_case_types
class _id_projectState extends State<id_project> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ID Project'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[700],
          elevation: 0,
        ),
        persistentFooterButtons: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF512DA8),
                              Color(0xFF6B3ED3),
                              Color(0xFF7A4AEB),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(8.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 30),
                      ),
                      onPressed: () {
                        setState(() {
                          ninjaLevel += 1;
                        });
                      },
                      onLongPress: () {
                        setState(() {
                          ninjaLevel += 5;
                        });
                      },
                      child: const Text('+'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF512DA8),
                              Color(0xFF6B3ED3),
                              Color(0xFF7A4AEB),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(2.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 40),
                      ),
                      onPressed: () {
                        setState(() {
                          ninjaLevel -= 1;
                        });
                      },
                      onLongPress: () {
                        setState(() {
                          ninjaLevel -= 5;
                        });
                      },
                      child: const Text('-'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.deepPurple[100],
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/spiderman thumbnail.jpg'),
                  radius: 50,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.deepPurple[200],
              ),
              Text(
                'NAME:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Ishaan Phaye',
                style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'CURRENT NINJA LEVEL:',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.grey[800]),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'ishaanphaye@gmail.com',
                    style: TextStyle(
                        color: Colors.purple[900],
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
