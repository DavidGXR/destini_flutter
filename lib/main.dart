import 'package:destini_flutter/story.dart';
import 'package:destini_flutter/storybrain.dart';
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

  StoryBrain storyBrain = new StoryBrain();

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
                  storyBrain.getStory(),
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
                    storyBrain.getChoice1(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                    ),
                  ),
                  onPressed: () {
                    storyBrain.nextStory(1);
                    setState(() {

                    });
                  },
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Visibility(
                  visible: storyBrain.didRestart(),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.lightBlue
                    ),
                    child: Text(
                      storyBrain.getChoice2(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                      ),
                    ),
                    onPressed: () {
                      storyBrain.nextStory(2);
                      setState(() {

                      });
                    },
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


