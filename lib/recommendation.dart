import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:chashma_ghar/menGlass.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:chashma_ghar/constants.dart' as constants;

class Recommendation extends StatefulWidget {
  const Recommendation({Key? key}) : super(key: key);

  @override
  _RecommendationState createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {

  File? imageFile;
  bool isDataGet = true;
  String shape = '';
  String apistr = 'image.jpg';


  String text = '';
  var faceShape = constants.shape;
  var d1 = 'images/diamondshape/1.jpg';
  var d2 = 'images/diamondshape/4.png';
  var d3 = 'images/diamondshape/5.jpg';
  var d4 = 'images/diamondshape/10.jpg';
  var d5 = 'images/diamondshape/22.jpg';

  void _getImageFirebase() async {



    print(faceShape);
    if(faceShape == 'Diamond'){
      print('in diamond');
      d1 = 'images/diamondshape/1.jpg';
      d2 = 'images/diamondshape/4.png';
      d3 = 'images/diamondshape/5.jpg';
      d4 = 'images/diamondshape/10.jpg';
      d5 = 'images/diamondshape/22.jpg';
    }
    else if(faceShape == 'Oblong'){
      print('in oblong');
      d1 = 'images/oblongshape/1.jpg';
      d2 = 'images/oblongshape/13.jpg';
      d3 = 'images/oblongshape/18.jpg';
      d4 = 'images/oblongshape/20.jpg';
      d5 = 'images/oblongshape/30.jpg';
    }
    else if(faceShape == 'Rectangular'){
      print('in rectangle');
      d1 = 'images/rectangleshape/4.png';
      d2 = 'images/rectangleshape/7.jpg';
      d3 = 'images/rectangleshape/16.jpg';
      d4 = 'images/rectangleshape/19.jpg';
      d5 = 'images/rectangleshape/21.jpg';
    }
    else if(faceShape == 'Triangle'){
      print('in triangle');
      d1 = 'images/triangleshape/1.jpg';
      d2 = 'images/triangleshape/1.png';
      d3 = 'images/triangleshape/2.jpg';
      d4 = 'images/triangleshape/3.jpg';
      d5 = 'images/triangleshape/4.jpg';
    }
    else if(faceShape == 'Squared'){
      print('in square');
      d1 = 'images/squareshape/2.jpg';
      d2 = 'images/squareshape/4.png';
      d3 = 'images/squareshape/6.jpg';
      d4 = 'images/squareshape/23.jpg';
      d5 = 'images/squareshape/42.jpg';
    }
    else if(faceShape == 'Round'){
      print('in round');
      d1 = 'images/roundshape/1.png';
      d2 = 'images/roundshape/3.png';
      d3 = 'images/roundshape/8.jpg';
      d4 = 'images/roundshape/12.jpg';
      d5 = 'images/roundshape/15.png';
    }

    setState(() {

      isDataGet = true;
      d1;
      d2;
      d3;
      d4;
      d5;
    });
  }

    getText(){
      text = 'text';
      setState(() {
        text;
      });
    }


  Future<http.Response> getFaceCoordinate(String file, String link) async {
    //String file = widget.glassimage;
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

    return response;

  }




  @override
  void initState() {
    super.initState();
    print('initState');
    _getImageFirebase() ;
  }

  @override
  Widget build(BuildContext context) {
    print('Hot Reload');

    return isDataGet == true ?
      Scaffold(
      appBar: AppBar(
        title: Text('Recommendation',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 20.0,),
          Container(
            height: 250.0,
            color: Colors.white,
            child: Column(
              children: [
                Image.network(constants.IP+'getimage?id=$apistr',
                  height: 250.0,
                ),
              ],
            ),
          ),

            Container(
              height: 200.0,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 200.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black54),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(5)),
                              textStyle: MaterialStateProperty.all(
                                  const TextStyle(fontSize: 16))
                          ),
                        onPressed: () async
                        {
                          final res = await getFaceCoordinate(d1, 'overlay');
                          print('facedet flask');
                          debugPrint(res.body);

                          final val = json.decode(res.body);
                          apistr = val["image"];
                          print('apistr : $apistr');

                          setState(() {
                            apistr;

                          });
                        },
                          child: Column(
                              children: [
                                Text('Glass 1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.black),),
                                Image(image: AssetImage(d1),),
                              ],
                            ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 200.0,
                        child: ElevatedButton(
                          onPressed: () async {
                            final res = await getFaceCoordinate(d2, constants.IP+'overlay');
                            print('facedet flask');
                            debugPrint(res.body);

                            final val = json.decode(res.body);
                            apistr = val["image"];
                            print('apistr : $apistr');

                            setState(() {
                              apistr;

                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black54),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(5)),
                              textStyle: MaterialStateProperty.all(
                                  const TextStyle(fontSize: 16))
                          ),
                          child: Column(
                            children: [
                              Text('Glass 2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                              Image(image: AssetImage(d2),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 200.0,
                        child: ElevatedButton(
                          onPressed: () async {
                            final res = await getFaceCoordinate(d3, constants.IP+'overlay');
                            print('facedet flask');
                            debugPrint(res.body);

                            final val = json.decode(res.body);
                            apistr = val["image"];
                            print('apistr : $apistr');

                            setState(() {
                              apistr;

                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black54),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(5)),
                              textStyle: MaterialStateProperty.all(
                                  const TextStyle(fontSize: 16))
                          ),
                          child: Column(
                            children: [
                              Text('Glass 3', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                              Image(image: AssetImage(d3),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 200.0,
                        child: ElevatedButton(
                          onPressed: () async {
                            final res = await getFaceCoordinate(d4, constants.IP+'overlay');
                            print('facedet flask');
                            debugPrint(res.body);

                            final val = json.decode(res.body);
                            apistr = val["image"];
                            print('apistr : $apistr');

                            setState(() {
                              apistr;

                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black54),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(5)),
                              textStyle: MaterialStateProperty.all(
                                  const TextStyle(fontSize: 16))
                          ),
                          child: Column(
                            children: [
                              Text('Glass 4', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                              Image(image: AssetImage(d4),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 200.0,
                        child: ElevatedButton(
                          onPressed: () async {
                            final res = await getFaceCoordinate(d5, constants.IP+'overlay');
                            print('facedet flask');
                            debugPrint(res.body);

                            final val = json.decode(res.body);
                            apistr = val["image"];
                            print('apistr : $apistr');

                            setState(() {
                              apistr;

                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black54),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(5)),
                              textStyle: MaterialStateProperty.all(
                                  const TextStyle(fontSize: 16))
                          ),
                          child: Column(
                            children: [
                              Text('Glass 5', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
                              Image(image: AssetImage(d5),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),


                ),
              ),
            ),
          //),
        ],
      ),
    ) : Center(
      child: Container(
        color: Colors.black54,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200.0,),
              Center(child: SpinKitFadingCube(color: Colors.white, size: 50.0,)),
              SizedBox(height: 25.0,),
              Center(child: Text('Recommendation', style: TextStyle(color: Colors.white, fontSize: 25.0,fontWeight: FontWeight.bold)))
            ],
          ),
        )

      ),
    );
  }
}
