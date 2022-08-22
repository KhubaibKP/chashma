import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:chashma_ghar/constants.dart' as constants;

class FaceDetFlask extends StatefulWidget {
  const FaceDetFlask({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FaceDetFlask> createState() => _FaceDetFlaskState();
}

class _FaceDetFlaskState extends State<FaceDetFlask> {
  // Selected Image storing in a Variable
  File? _selectedImage;
  String apistr = 'https://hotpot.ai/images/site/ai/art_maker/teaser.jpg';
  // Faces Coordinates List wrt x, y, w, h
  List<List<int>> facesCoordinates = <List<int>>[];
  // Boolean value whether the face is detected or not
  bool get isFaceDetected => facesCoordinates.isEmpty ? false : true;
  bool isDataGet = false;

  Future<http.Response> getFaceCoordinate(String file, String link) async {
    print(file);
    ///MultiPart request
    //String filename = file.path.split('/').last;
    var request = http.MultipartRequest(
      'POST',
      Uri.parse(link),
    );
    Map<String, String> headers = {"Content-type": "multipart/form-data"};
    var picture =  http.MultipartFile.fromBytes('image', (await rootBundle.load('images/$file')).buffer.asUint8List(), filename: file);
    request.files.add(picture);

    request.headers.addAll(headers);
    print("request: " + request.toString());
    var res = await request.send();
    var response = await http.Response.fromStream(res);
    print("This is response:" + response.body);
    print("This is response: ${res.statusCode} ");
    print("This is response: ${res.statusCode} ");
    return response;
  }

  Future<void> _addImage() async {
    facesCoordinates.clear();
    final image =
    await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    if (image != null) {
      _selectedImage = File(image.path);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (_selectedImage == null)
                  const Text(
                    'Please Select a Image',
                  )
                else
                  Column(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Image.file(File(_selectedImage!.path))),
                      TextButton(
                          onPressed: () async {
                            final res = await getFaceCoordinate(
                                'hf1.jpeg', "http://10.0.2.2:5000/face_shape");
                            print('facedet flask');
                            debugPrint(res.body);
                            // print('facedet 1');

                            final val = json.decode(res.body);
                             apistr = val['shape'];
                             print('apistr : $apistr');

                            setState(() {
                              apistr;
                              isDataGet = true;
                            });
                          },
                          child: const Text("Detect Face")),
                      isFaceDetected
                          ? FutureBuilder<ui.Image>(
                          future: decodeImageFromList(
                              File(_selectedImage!.path).readAsBytesSync()),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return Container();
                            }
                            return SizedBox(
                              width: snapshot.data!.width.toDouble(),
                              height: snapshot.data!.height.toDouble(),
                              child: null,

                            );
                          })
                          : const Text(
                          "No Face Detected or click Detect Face Button"),
                       //isDataGet == true ? Image.network('http://10.0.2.2:5000/getimage?id=$apistr') : CircularProgressIndicator(),
                      // Image(image: AssetImage('images/glass0.png')),
                    ],
                  ),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addImage,
        tooltip: 'Image',
        child: const Icon(Icons.add),
      ),
    );
  }
}