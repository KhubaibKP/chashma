import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:chashma_ghar/category_page.dart';
import 'package:chashma_ghar/menGlass.dart';
import 'package:chashma_ghar/faceDetFlask.dart';
import 'package:chashma_ghar/glasses_page.dart';
import 'package:chashma_ghar/help.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:chashma_ghar/constants.dart' as constants;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomePage extends StatefulWidget {



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String shape = '';


  File? imageFile;
  String imageUrl = 'https://hotpot.ai/images/site/ai/art_maker/teaser.jpg';
  final _picker = ImagePicker();
  var urlpic = '';
  var urlf = 'https://hotpot.ai/images/site/ai/art_maker/teaser.jpg';
  bool isDataGet= false;

  void _toNextScreen() {
    print('shape in func = $shape');
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => CategoryPage(),
      ),

    );
  }

  void _getFrontCamera() async {
    await Firebase.initializeApp();                 // Firebase
    final _storage = FirebaseStorage.instance;

    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 1080,
      maxWidth: 1080,
    );

    setState(() {
      imageFile = File(pickedFile!.path);
    });

    String name = 'image';
    var file = File(pickedFile!.path);

    var snapshot = await _storage.ref()
        .child('images/$name')
        .putFile(file)
        .whenComplete(() => print('Uploaded to Firebase'));

    var downloadUrl = await snapshot.ref.getDownloadURL();
    print(downloadUrl);

    ImageGallerySaver.saveFile(pickedFile.path)
        .then(
          (value) => ScaffoldMessenger.of(context)
          .showSnackBar(
        const SnackBar(
          content: Text(
            'imgSavedtoGallery',
          ),
          duration: Duration(seconds: 2),
        ),
      ),
    );

    var request = http.MultipartRequest(
      'POST',
      Uri.parse(constants.IP+'face_shape'),
    );
    Map<String, String> headers = {"Content-type": "multipart/form-data"};
    String filename = file.path.split('/').last;
    request.files.add(
      http.MultipartFile(
        'image',
        file.readAsBytes().asStream(),
        file.lengthSync(),
        filename: filename,
      ),
    );

    //var picture =  http.MultipartFile.fromBytes('image', (await rootBundle.load('images/$file')).buffer.asUint8List(), filename: file);
    //request.files.add(picture);

    request.headers.addAll(headers);
    print("request: " + request.toString());
    var res = await request.send();
    var response = await http.Response.fromStream(res);
    print("This is response:" + response.body);
    print("This is response: ${res.statusCode} ");
    print("This is response: ${res.statusCode} ");

    final val = json.decode(response.body);
    shape = val['shape'];
    print('shape : $shape');

    setState(() {
      shape;
      isDataGet = true;
    });

    constants.shape = shape;

  }

    void _getFromGallery() async {
      await Firebase.initializeApp();
      final _storage = FirebaseStorage.instance;

      XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxHeight: 1080,
        maxWidth: 1080,
      );
      print(' pickedFile from _getFromGallery: $pickedFile');
      setState(() {
        imageFile = File(pickedFile!.path);
      });
      print('imageFile from _getFromGaller: $imageFile');

      // String name = 'image';
       var file = File(pickedFile!.path);

      var request = http.MultipartRequest(
        'POST',
        Uri.parse(constants.IP+'face_shape'),
      );
      Map<String, String> headers = {"Content-type": "multipart/form-data"};
      String filename = file.path.split('/').last;
      request.files.add(
        http.MultipartFile(
          'image',
          file.readAsBytes().asStream(),
          file.lengthSync(),
          filename: filename,
        ),
      );


      request.headers.addAll(headers);
      print("request: " + request.toString());
      var res = await request.send();
      var response = await http.Response.fromStream(res);
      print("This is response:" + response.body);
      print("This is response: ${res.statusCode} ");
      print("This is response: ${res.statusCode} ");

      final val = json.decode(response.body);
      shape = val['shape'];
      print('shape : $shape');

      setState(() {
        shape;
        isDataGet = true;
      });

      constants.shape = shape;

    }

    // void _uploadImage() async {
    //   await Firebase.initializeApp();
    //   final _storage = FirebaseStorage.instance;
    //   XFile? image;
    //
    //   //Check Permissions
    //   await Permission.photos.request();
    //
    //   var permissionStatus = await Permission.photos.status;
    //
    //   if (permissionStatus.isGranted) {
    //     print('Granted');
    //     //Select Image
    //     image = await _picker.pickImage(source: ImageSource.gallery);
    //     var file = File(image!.path);
    //     String name = image.name;
    //     name = 'image';
    //
    //     if (image != null) {
    //       //Upload to Firebase
    //       // Firebase.initializeApp();
    //       var snapshot = await _storage.ref()
    //           .child('images/$name')
    //           .putFile(file)
    //           .whenComplete(() => print('Uploaded to Firebase'));
    //
    //       var downloadUrl = await snapshot.ref.getDownloadURL();
    //       print(downloadUrl);
    //
    //       setState(() {
    //         imageUrl = downloadUrl;
    //       });
    //     } else {
    //       print('No Path Received');
    //     }
    //   } else {
    //     print('Grant Permissions and try again');
    //   }
    // }



    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(height: 5.0,),
            imageFile != null ?
            Container(
              height: 200.0,
              child: Image.file(imageFile!),
            ) :
            Container(
              color: Colors.white,
              child: Icon(
                Icons.camera,
                color: Colors.grey,
                size: MediaQuery
                    .of(context)
                    .size
                    .width * .4,
              ),
            ),
            // Container(
            //   height: 100.0,
            //   color: Colors.white,
            //   child: Padding(
            //       padding: const EdgeInsets.all(10.0),
            //       child: Row(
            //         children: [
            //           Expanded(
            //             child: Icon(
            //               Icons.photo,
            //               color: Colors.black,
            //               size: MediaQuery
            //                   .of(context)
            //                   .size
            //                   .width * .2,
            //             ),
            //           ),
            //
            //           Expanded(
            //             flex: 2,
            //             child: ElevatedButton(
            //               child: Text(
            //                 constants.IP+'overlay',
            //                 style: TextStyle(
            //                   fontSize: 15.0,
            //                 ),
            //               ),
            //               onPressed: () {
            //                 Navigator.push(context,
            //                   MaterialPageRoute(builder: (context) => FlaskApi(),
            //                   ),
            //
            //                 );
            //               },
            //
            //               style: ButtonStyle(
            //                   backgroundColor: MaterialStateProperty.all(Colors.brown),
            //                   padding: MaterialStateProperty.all(EdgeInsets.all(15)),
            //                   textStyle: MaterialStateProperty.all(
            //                       TextStyle(fontSize: 16))
            //               ),
            //             ),
            //           ),
            //         ],
            //       )
            //   ),
            // ),
            Container(
              height: 100.0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.camera_enhance_rounded,
                        color: Colors.black,
                        size: MediaQuery
                            .of(context)
                            .size
                            .width * .2,
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        child: const Text(
                          'Camera',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                        onPressed: () {
                          _getFrontCamera();
                        },

                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.brown),
                            padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                            textStyle: MaterialStateProperty.all(
                                TextStyle(fontSize: 16))
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            Container(
              height: 100.0,
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Icon(
                          Icons.photo,
                          color: Colors.blue,
                          size: MediaQuery
                              .of(context)
                              .size
                              .width * .2,
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: const Text(
                            'Gallery',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                          onPressed: () {
                            _getFromGallery();
                          },

                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.brown),
                              padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 16))
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),

            // firebase upload image and receive....

            SizedBox(height: 15.0,),

            isDataGet == true ? Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.black),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))
                ), onPressed: () {
                  _toNextScreen();

                  print(shape);

                // isDataGet == true ? _toNextScreen() : CircularProgressIndicator();

              },
              ),
            ) : SpinKitFadingCube(color: Colors.black, size: 50.0,),

          ],
        ),

      );
    }
  }


