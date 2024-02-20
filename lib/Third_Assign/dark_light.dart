import 'package:flutter/material.dart';
import 'package:my_app/Second_Assign/drawer_widget.dart';
import 'theme_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ThemeData _currentTheme = ThemeData.light().copyWith(hintColor: Colors.blue);

  @override
  void initState() {
    super.initState();
    _loadTheme();
  }

  void _loadTheme() async {
    String? theme = await ThemePreferences.getTheme();
    print('Current theme: $theme'); // Debugging line
    if (theme == 'dark') {
      _applyTheme(_createCustomDarkTheme());
    } else {
      _applyTheme(ThemeData.light().copyWith(hintColor: Colors.blue));
    }
  }

  void _applyTheme(ThemeData theme) {
    setState(() {
      _currentTheme = theme;
    });
    print('Theme applied: $theme'); // Debugging line
  }

  ThemeData _createCustomDarkTheme() {
    return ThemeData.dark().copyWith(
      hintColor: Colors.orange,
      // Add any other customizations to the dark theme as needed
    );
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: _currentTheme, // Set the current theme to MaterialApp
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme Preferences'),
        ),
        drawer: DrawerWidget(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  ThemePreferences.setTheme('light');
                  _applyTheme(ThemeData.light().copyWith(hintColor: Colors.blue));
                },
                child: Text('Set Light Theme'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ThemePreferences.setTheme('dark');
                  _applyTheme(_createCustomDarkTheme());
                },
                child: Text('Set Dark Theme'),
              ),
              SizedBox(height: 20),
              Text(
                'Current Theme: ${_currentTheme.brightness == Brightness.light ? 'Light' : 'Dark'}',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),

      //   bottomNavigationBar:  BottomNavigationBarWidget(
      //   currentIndex: _currentIndex,
      //   onTap: (int indexOfItem) {
      //     setState(() {
      //       _currentIndex = indexOfItem;
      //     });

      //     // Handle bottom navigation item taps here
      //     switch (indexOfItem) {
      //       case 1:
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage() ));
      //         break;
      //       case 2:
      //         Navigator.push(context, MaterialPageRoute(builder: (context) =>CalculatorScreen()));
      //         break;
      //       case 3:
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
      //         break;
      //       case 4:
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
      //         break;    
      //     }
      //   },
      // ),
      ),
    );
  }
}
