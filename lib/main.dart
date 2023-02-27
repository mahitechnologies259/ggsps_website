import 'package:flutter/material.dart';
import 'LandingPage/LandingPage.dart';
import 'Navbar/Navbar.dart';
import 'Navbar/default_button.dart';
import 'Navbar/menu_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color(0xFF1C1B3B),
        secondary: const Color(0xFFFFC107),

      ),
          fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Navbar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40.0),
                  child: LandingPage(),
                )
              ],
            ),
          ),
        ),

      drawer: Drawer(
        // child: Column(
        //   children: [
        //     MenuItem(
        //       title: "Home",
        //       press: () {},
        //     ),
        //     MenuItem(
        //       title: "About Us",
        //       press: () {},
        //     ),
        //     MenuItem(
        //       title: "Academics",
        //       press: () {},
        //     ),
        //     MenuItem(
        //       title: "Media Gallery",
        //       press: () {},
        //     ),
        //     MenuItem(
        //       title: "Contact Us",
        //       press: () {},
        //     ),
        //     DefaultButton(
        //       text: "Get Admission",
        //       press: () {},
        //     ),
        //   ],
        // ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      
    );
  }
}
