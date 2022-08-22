import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
         body: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [
               Text('Chashma Ghar',
                 style: TextStyle(
                   fontSize: 30.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                 ),
               ),
               SizedBox(height: 5.0,),
               Padding(
                 padding: const EdgeInsets.only(left: 6.0),
                 child: Text('We are selling genuine brands glasses at best price. Customer satisfaction is our main goal.',
                   style: TextStyle(
                     fontSize: 25.0,
                     fontWeight: FontWeight.normal,
                     backgroundColor: Colors.white70,
                     color: Colors.black,
                   ),
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.only(right: 18.0,top: 10.0),
                 child: Row(
                   children: [
                     Icon(
                       Icons.facebook,
                       size: 40.0,
                       color: Colors.blue.shade900,
                     ),
                     SizedBox(width: 10.0),
                     Text('Chashma Ghar',
                       style: TextStyle(
                         fontSize: 27.0,
                         color: Colors.black,
                       ),
                     ),


                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 18.0,top: 10.0),
                 child: Row(
                   children: [
                     Icon(
                       Icons.call,
                       size: 40.0,
                       color: Colors.green.shade900,
                     ),
                     SizedBox(width: 10.0),
                     Text('0321-2427424',
                       style: TextStyle(
                         fontSize: 27.0,
                         color: Colors.black,
                       ),
                     ),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 18.0,top: 10.0),
                 child: Row(
                   children: [
                     Icon(
                       Icons.email,
                       size: 40.0,
                       color: Colors.red.shade900,
                     ),
                     SizedBox(width: 10.0),
                     Text('chashmaGhar@gmail.com',
                       style: TextStyle(
                         fontSize: 18.0,
                         fontWeight: FontWeight.bold,
                         color: Colors.black,
                       ),
                     ),
                   ],
                 ),
               ),
             ],
           )
         ),
      ),
    );
  }
}
