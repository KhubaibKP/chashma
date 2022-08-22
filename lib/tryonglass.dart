import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:chashma_ghar/menGlass.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:chashma_ghar/constants.dart' as constants;


class TryonGlass extends StatefulWidget {


  const TryonGlass({Key? key, required this.glassimage}) : super(key: key);
  final String glassimage;


  @override
  _TryonGlassState createState() => _TryonGlassState();
}

class _TryonGlassState extends State<TryonGlass> {


  File? imageFile;
  var urlf1;
  bool isDataGet = false;
  String apistr = 'image.jpg';
  var i = 0;

  // void _getImageFirebase() async {
  //   await Firebase.initializeApp();
  //
  //   final ref1 = FirebaseStorage.instance.ref().child('images/image');
  //   urlf1 = await ref1.getDownloadURL();
  //
  //   setState(() {
  //
  //   });
  //   urlf1;
  // }

    void getFaceCoordinate() async {
    print(widget.glassimage);
    String file = widget.glassimage;
    ///MultiPart request
    //String filename = file.path.split('/').last;
    var request = http.MultipartRequest(
      'POST',
      Uri.parse(constants.IP+'overlay'),
    );
    Map<String, String> headers = {"Content-type": "multipart/form-data"};
    var picture =  http.MultipartFile.fromBytes('image', (await rootBundle.load(file)).buffer.asUint8List(), filename: file);
    request.files.add(picture);

    request.headers.addAll(headers);
    print("request: " + request.toString());
    var res = await request.send();
    var response = await http.Response.fromStream(res);
    print("This is response:" + response.body);
    print("This is response: ${res.statusCode} ");
    print("This is response: ${res.statusCode} ");

    final val = json.decode(response.body);
    apistr = val["image"];
    print('apistr : $apistr');

    setState(() {
      apistr;

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Try-On-Glass',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 20.0,),
          Container(
            height: 400.0,
            color: Colors.white,
            child: Column(
              children: [
                Image.network(constants.IP+'getimage?id=$apistr',
                height: 350.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 100.0,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: ElevatedButton(
                  child: Text('TRY',style: TextStyle(
                    fontSize: 20.0,
                  ),),
                  onPressed: (){
                    getFaceCoordinate();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 10)),
                  ),

                ),
              ),
            ),
          ),



        ],
      ),

    );
  }
}
