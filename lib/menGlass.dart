import 'package:flutter/material.dart';
import 'package:chashma_ghar/tryonglass.dart';
import 'package:chashma_ghar/constants.dart' as constants;


class Dashboard extends StatefulWidget {

  const Dashboard({Key? key,}) : super(key: key);


  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  String glassimage = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //IconButton(onPressed: null, icon: Icon(Icons.menu, color: Colors.black)),
          Container(
            color: Colors.white,

            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),       // Row 1
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(8.0) //                 <--- border radius here
                          ),
                        ),

                        height: 200.0,
                        width: 150.0,
                        child: FittedBox(
                        fit: BoxFit.contain,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/diamondshape/1.jpg'),
                                    ),
                                  );
                                },
                                child: const Image(image: AssetImage('images/diamondshape/1.jpg'),
                                  height: 200.0,
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                ),
                              ),

                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text('Glass 1',
                              style: TextStyle(
                                fontSize: 45.0,
                              ),
                            ),
                          ],
                        ),
                  ),
                      ),
                    ),
                      SizedBox(width: 10.0,),

                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),
                          height: 200.0,
                          width: 150.0,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/diamondshape/4.png',),
                                        ),
                                      );
                                    },
                                    child: const Image(image: AssetImage('images/diamondshape/4.png'),
                                      height: 200.0,
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                    ),
                                  ),

                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text('Glass 2',
                                  style: TextStyle(
                                    fontSize: 45.0,
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),         // Row 2
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/diamondshape/5.jpg',),
                                        ),
                                      );
                                    },
                                    child: const Image(image: AssetImage('images/diamondshape/5.jpg'),
                                      height: 200.0,
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                    ),
                                  ),

                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text('Glass 3',
                                  style: TextStyle(
                                    fontSize: 45.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Column(
                              children: [

                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/oblongshape/1.jpg',),
                                        ),
                                      );
                                    },
                                    child: const Image(image: AssetImage('images/oblongshape/1.jpg'),
                                      height: 200.0,
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                    ),
                                  ),

                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text('Glass 4',
                                  style: TextStyle(
                                    fontSize: 45.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),           // Row 3
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,   // Aviator
                    children: [

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/oblongshape/1.jpg',),
                                        ),
                                      );
                                    },
                                    child: const Image(image: AssetImage('images/oblongshape/1.jpg'),
                                      height: 200.0,
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                    ),
                                  ),

                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text('Glass 5',
                                  style: TextStyle(
                                    fontSize: 45.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/oblongshape/13.jpg',),
                                        ),
                                      );
                                    },
                                    child: const Image(image: AssetImage('images/oblongshape/13.jpg'),
                                      height: 200.0,
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                    ),
                                  ),

                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text('Glass 6',
                                  style: TextStyle(
                                    fontSize: 45.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),       // Row 4
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,   // Aviator
                    children: [

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/oblongshape/18.jpg',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/oblongshape/18.jpg'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 7',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                      SizedBox(width: 10.0,),

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/rectangleshape/4.png',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/rectangleshape/4.png'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 8',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),       // Row 5
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,   // Aviator
                    children: [

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/rectangleshape/7.jpg',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/rectangleshape/7.jpg'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 9',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                      SizedBox(width: 10.0,),

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/rectangleshape/19.jpg',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/rectangleshape/19.jpg'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 10',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),       // Row 6
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,   // Aviator
                    children: [

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/roundshape/1.png',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/roundshape/1.png'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 11',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                      SizedBox(width: 10.0,),

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/roundshape/12.jpg',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/roundshape/12.jpg'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 12',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),       // Row 7
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,   // Aviator
                    children: [

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/roundshape/1.png',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/roundshape/1.png'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 13',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                      SizedBox(width: 10.0,),

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/roundshape/3.png',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/roundshape/3.png'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 14',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),       // Row 8
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,   // Aviator
                    children: [

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/roundshape/8.jpg',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/roundshape/8.jpg'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 15',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                      SizedBox(width: 10.0,),

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/roundshape/12.jpg',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/roundshape/12.jpg'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 16',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),       // Row 9
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,   // Aviator
                    children: [

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/squareshape/2.jpg',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/squareshape/2.jpg'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 17',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                      SizedBox(width: 10.0,),

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/squareshape/4.png',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/squareshape/4.png'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 18',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),       // Row 10
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,   // Aviator
                    children: [

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/triangleshape/1.jpg',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/triangleshape/1.jpg'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 19',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),
                      SizedBox(width: 10.0,),

                      Expanded(
                        child: Container(
                          height: 200.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(8.0) //                 <--- border radius here
                            ),
                          ),                          child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryonGlass(glassimage: 'images/triangleshape/3.jpg',),
                                      ),
                                    );
                                  },
                                  child: const Image(image: AssetImage('images/triangleshape/3.jpg'),
                                    height: 200.0,
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.white),
                                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
                                  ),
                                ),

                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text('Glass 20',
                                style: TextStyle(
                                  fontSize: 45.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

const kTextStyle = TextStyle(
  fontSize: 30.0,
);