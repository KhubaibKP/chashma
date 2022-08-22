import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            Text('How to use an application?',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('You can view glasses in our app, but first you need to capture or upload an image to virtually try on glasses.',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            SizedBox(height: 14.0),
            Text('How to try glasses virtually?',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('To try glasses virtually you need to upload an image. Select "Try on glasses" button.',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ],
        ),

      ),
    );
  }
}
