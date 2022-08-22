import 'package:chashma_ghar/menGlass.dart';
import 'package:flutter/material.dart';
import 'package:chashma_ghar/tryonglass.dart';
import 'package:chashma_ghar/recommendation.dart';

class CategoryPage extends StatefulWidget {

  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  bool isTrue = false;


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Glasses',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text('Recommendation',       // Recommendation
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: null,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Recommendation(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black54),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text('Glasses',        // Glasses
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        ),
                      ),
                       SizedBox(
                         height: 5.0,
                       ),
                       Padding(
                         padding: EdgeInsets.only(bottom: 15.0),
                         child: Image(
                          image: AssetImage('images/menglass.jpg'),
                      ),
                       ),
                    ],
                  ),
                  onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard(),
                    ),
                  );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black54),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 25,fontWeight: FontWeight.bold,)),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),

                //

              ],
            ),
          ),
        ),
      ),
    );
  }
}

