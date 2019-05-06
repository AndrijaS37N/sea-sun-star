import 'package:flutter/material.dart';
import './home_view.dart';

void main() => runApp(Main());

// Main class, the starter class of the app.
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Star Animation',
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            accentColor: Colors.green,
            // Default font for this app.
            fontFamily: 'Helvetica'),
        // No title.
        home: HomeView(title: ''),
        debugShowCheckedModeBanner: false);
  }
}
