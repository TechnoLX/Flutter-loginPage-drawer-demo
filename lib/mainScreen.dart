import 'package:NewApp/login.dart';
import 'package:NewApp/pageOne.dart';
import 'package:NewApp/pageTwo.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color mainTheme = Color(0xFFF50074);
    return Scaffold(
      drawer: Drawer(
        semanticLabel: 'Menu Bar',
        elevation: 20.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text('Menu Bar',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700)),
              ),
              decoration: BoxDecoration(color: mainTheme),
            ),
            ListTile(
              title: Text(
                'Home Screen',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text(
                'Screen 1',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.edit),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PageOne()));
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text(
                'Screen 2',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.bookmark),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => PageTwo()));
              },
            ),
            Divider(
              thickness: 2.0,
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.logout),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
            Divider(
              thickness: 2.0,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: mainTheme,
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
