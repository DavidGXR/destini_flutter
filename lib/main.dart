import 'package:flutter/material.dart';

void main() {
  runApp(DestiniApp());
}

class DestiniApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DestiniAppHomePage(),
      ),
    );
  }
}

class DestiniAppHomePage extends StatefulWidget {
  @override
  _DestiniAppHomePageState createState() => _DestiniAppHomePageState();
}

class _DestiniAppHomePageState extends State<DestiniAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
      constraints: BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  'In this challenge, you will be building a choose your own adventure game like Bandersnatch. In the process, you should apply your knowledge from the last module (Quizzler) to use Dart OOP principles to build a well organised project.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red
                  ),
                  child: Text(
                    "Ok, I got it!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlue
                  ),
                  child: Text(
                    "No, I don't want to do this challenge!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


