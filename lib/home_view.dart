import 'package:flutter/material.dart';
import './custom_animations.dart';

// The home view, where everything is presented for this app.
class HomeView extends StatefulWidget {
  HomeView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        // Not needed - AppBar.
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: new Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.42, 0.86, 1],
                colors: [
                  Color.fromRGBO(0, 0, 0, 1), // Colors.black
                  Color.fromRGBO(22, 80, 173, 0.95), // dark blue
                  Colors.blueGrey[100],
                  Colors.lightBlue[400],
                ],
              ),
            ),
            // Scroll widget - ListView.
            child: ListView(children: <Widget>[
              Center(child: AnimatedStar(), heightFactor: 1),
              Center(child: AnimatedSun()),
              Center(
                  child: Text("\nMade by\nAndrija.",
                      style: TextStyle(
                        fontSize: 62,
                        // Custom font, check out the pubspec.yaml markdown file.
                        fontFamily: 'Lobster',
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                            color: Color.fromARGB(125, 0, 0, 255),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center)),
              Padding(padding: EdgeInsets.all(14.0)),
              Center(
                  child: Text("🏄🏻‍♂️\n",
                      style: TextStyle(
                        fontSize: 46,
                        // Custom font, check out the pubspec.yaml markdown file.
                        fontFamily: 'Lobster',
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                            color: Color.fromARGB(125, 0, 0, 255),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center))
            ])));
  }
}
