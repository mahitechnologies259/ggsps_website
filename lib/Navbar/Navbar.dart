import 'package:flutter/material.dart';
import 'menu_item.dart';
import 'default_button.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF1C1B3B),
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/GGSPS Logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "GURU GOBIND SINGH PUBLIC SCHOOL".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {},
          ),
          MenuItem(
            title: "About Us",
            press: () {},
          ),
          MenuItem(
            title: "Academics",
            press: () {},
          ),
          MenuItem(
            title: "Media Gallery",
            press: () {},
          ),
          MenuItem(
            title: "Contact Us",
            press: () {},
          ),
          DefaultButton(
            text: "Get Admission",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFF1C1B3B),
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.16),
            ),
          ],
        ),
        child: Column(children: <Widget>[
          Row(
            children: [
              Image.asset(
                "assets/images/GGSPS Logo.png",
                height: 25,
                alignment: Alignment.topCenter,
              ),
              SizedBox(width: 5),
              Text(
                "GURU GOBIND SINGH PUBLIC SCHOOL".toUpperCase(),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MenuItem(
                  title: "Home",
                  press: () {},
                ),
                MenuItem(
                  title: "About Us",
                  press: () {},
                ),
                MenuItem(
                  title: "Academics",
                  press: () {},
                ),
                MenuItem(
                  title: "Media Gallery",
                  press: () {},
                ),
                MenuItem(
                  title: "Contact Us",
                  press: () {},
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
