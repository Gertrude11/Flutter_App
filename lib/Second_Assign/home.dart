import 'package:flutter/material.dart';
import 'package:my_app/First_Assign/Calculator.dart';
import 'package:my_app/Second_Assign/about.dart';
import 'package:my_app/Second_Assign/bottom_widget.dart';
import 'package:my_app/Second_Assign/drawer_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        backgroundColor: Color.fromARGB(255, 0, 47, 85),
      ),
      drawer: DrawerWidget(),
       
 
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1516617442634-75371039cb3a?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Welcome to Pro-Flutter app  ',
                
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 550.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
               
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
               
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: (int indexOfItem) {
          setState(() {
            _currentIndex = indexOfItem;
          });

          // Handle bottom navigation item taps here
          switch (indexOfItem) {
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorScreen()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
              break;
               
          }
        },
      ),
    );
  }
}
