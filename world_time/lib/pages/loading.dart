import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'Loading...';

  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Kolkata', flag: 'India.png', url: 'asia/kolkata');
    await instance.getTime();
    print(instance.time);
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime': instance.isDayTime,
      }); //delays this statement to be executed, by 1 second
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SpinKitRotatingCircle(
                color: Colors.grey[200],
                size: 30.0,
              ),
              SpinKitRotatingCircle(
                color: Colors.grey[400],
                size: 30.0,
              ),
              SpinKitRotatingCircle(
                color: Colors.grey[600],
                size: 30.0,
              ),
              SpinKitRotatingCircle(
                color: Colors.grey[700],
                size: 30.0,
              ),
              SpinKitRotatingCircle(
                color: Colors.grey[900],
                size: 30.0,
              ),
            ],
          ),
        ));
  }
}
