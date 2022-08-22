import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      width: double.infinity,
      height: 200.0,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 70.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/rectangleshape/7.jpg'),
              )
            ),
          ),
          Text('Chashma Ghar',style: TextStyle(
            color: Colors.white, fontSize: 28.0,
          ),),
        ],
      ),
    );
  }
}
