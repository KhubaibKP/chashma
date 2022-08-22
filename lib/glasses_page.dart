import 'package:flutter/material.dart';
import 'package:chashma_ghar/aboutUs.dart';
import 'package:chashma_ghar/help.dart';
import 'my_drawer_header.dart';
import 'package:chashma_ghar/menGlass.dart';
import 'package:chashma_ghar/category_page.dart';
import 'package:chashma_ghar/home_page.dart';

class GlassesPage extends StatefulWidget {

  const GlassesPage({Key? key}) : super(key: key);

  @override
  _GlassesPageState createState() => _GlassesPageState();
}

class _GlassesPageState extends State<GlassesPage> {
  var currentPage = DrawerSections.homepage;
  String text = 'Chashma Ghar';

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.homepage) {
      container = HomePage();
      text = 'Chashma Ghar';
    }
    else if (currentPage == DrawerSections.categoryPage) {
      container = CategoryPage();
      text = 'Category';
    }
    // else if (currentPage == DrawerSections.dashboard) {
    //   container = Dashboard();
    // }

    else if (currentPage == DrawerSections.aboutus) {
      container = AboutUs();
      text = 'About Us';
    }
    else if (currentPage == DrawerSections.help) {
      container = Help();
      text = 'Help';
    }

      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(text,
              //textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            backgroundColor: Colors.black54,
          ),
          drawer: Drawer(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    MyHeaderDrawer(),
                    MydrawerList(),
                  ],
                ),
              ),
            ),

          ),
           body: container,

        ),
      );
    }

    Widget MydrawerList() {
      return Container(
        padding: EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            menuItem(
                1, "Home Page", Icons.home, Colors.deepOrange,
                currentPage == DrawerSections.homepage ? true : false
            ),
            menuItem(
                2, "Category", Icons.category, Colors.green,
                currentPage == DrawerSections.categoryPage ? true : false
            ),
            // menuItem(
            //     3, "Dashboard", Icons.dashboard,
            //     currentPage == DrawerSections.dashboard ? true : false
            // ),
            menuItem(
                4, "About Us", Icons.book, Colors.deepPurple,
                currentPage == DrawerSections.aboutus ? true : false
            ),
            menuItem(
                5, "Help", Icons.help, Colors.red,
                currentPage == DrawerSections.help ? true : false
            ),
          ],

        ),
      );
    }
    Widget menuItem(int id, String title, IconData icon, colors,  bool selected) {
      return Material(
        color: selected ? Colors.grey : Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            setState(() {
              if (id == 1) {
                currentPage = DrawerSections.homepage;
              }
              if (id == 2) {
                currentPage = DrawerSections.categoryPage;
              }
              // if (id == 3) {
              //   currentPage = DrawerSections.dashboard;
              // }
              if (id == 4) {
                currentPage = DrawerSections.aboutus;
              }
              else if (id == 5) {
                currentPage = DrawerSections.help;
              }
            });
          },
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Icon(
                    icon,
                    size: 20.0,
                    color: colors,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      );
     }

  } //widget

enum DrawerSections{
  homepage,
  categoryPage,
  //dashboard,
  aboutus,
  help,
}




