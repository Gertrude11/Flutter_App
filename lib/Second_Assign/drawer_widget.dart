import 'package:flutter/material.dart';
import 'package:my_app/First_Assign/Calculator.dart';
import 'package:my_app/Second_Assign/about.dart';
import 'package:my_app/Third_Assign/broadcast_internet.dart';
import 'package:my_app/Third_Assign/dark_light.dart';
import 'package:my_app/Third_Assign/login.dart';
import 'package:my_app/Third_Assign/signup.dart';


class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 21, 140, 238),
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color.fromARGB(255, 21, 140, 238)),
                accountName: Text(
                  "Gertrude Uzimana",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("gerturde23@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1529778873920-4da4926a72c2?q=80&w=1636&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    height: 50.0,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text(' My Home '),
              onTap: () {
                Navigator.pop(context);
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' My Calculator '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorScreen()));
              },
            ),
              ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(' My Settings '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
              ListTile(
              leading: const Icon(Icons.person_off_outlined),
              title: const Text(' SIGN UP '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
            ),
             ListTile(
              leading: const Icon(Icons.person_off_outlined),
              title: const Text(' LOGIN '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
              ListTile(
              leading: const Icon(Icons.signal_wifi_connected_no_internet_4_outlined),
              title: const Text(' Connection '),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConnectionWidget()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
