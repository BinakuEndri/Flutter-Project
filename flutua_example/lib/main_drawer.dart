import 'package:flutter/material.dart';
import 'package:flutua_example/about_ud.dart';
import 'package:flutua_example/course_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://flutura-academy.com/assets/img/Flutura_Academy_Logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Ballina',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/');
            },
          ),
          ListTile(
            title: Text(
              'Reth Nesh',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
             onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(AboutUsScreen.routeName);
             },
          ),ListTile(
            title: Text(
              'Kurset',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(CourseScreen.routeName);
            },
          ),ListTile(
            title: Text(
              'LAB',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(AboutUsScreen.routeName);
            },
          ),ListTile(
            title: Text(
              'Partneret',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(AboutUsScreen.routeName);
            },
          ),ListTile(
            title: Text(
              'Te Rejat',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(AboutUsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
