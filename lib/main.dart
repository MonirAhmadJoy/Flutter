import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Favourite.dart';
import 'package:flutter_application_1/Helpline.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/Map.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(Assistant());
}

class Assistant extends StatefulWidget {
  const Assistant({Key? key}) : super(key: key);

  @override
  State<Assistant> createState() => _AssistantState();
}

class _AssistantState extends State<Assistant> {
  int _currentIndex = 0;
  List ls = [Situation(), Map(), Helpline(), notification()];
  void onPageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 50,
          // fixedColor: Colors.orange,
          backgroundColor: Colors.blue,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 20,
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,

          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.teal,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on,
              ),
              label: 'Map',
              backgroundColor: Colors.lime,
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.purple[300],
                icon: Icon(Icons.call),
                label: 'HelpLine'),
            BottomNavigationBarItem(
                backgroundColor: Colors.teal,
                icon: Icon(Icons.add_call),
                label: 'Favourite'),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            onPageChanged(index);
          },
        ),
        body: ls[_currentIndex],
      ),
    );
  }
}
