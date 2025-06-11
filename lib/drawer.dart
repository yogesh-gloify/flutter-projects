import 'package:flutter/material.dart';
import 'package:welcome_app/pages/account.dart';
import 'package:welcome_app/pages/home.dart';
import 'package:welcome_app/pages/message.dart';
import 'package:welcome_app/pages/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
        title: Center(
          child: Text(
            'D R A W E R',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        clipBehavior: Clip.none,
        child: Container(
          padding: EdgeInsets.all(0),
          color: Colors.deepPurple[100],
          child:
              // Drawer Main Content
              ListView(
                padding: EdgeInsets.all(0),
                children: [
                  DrawerHeader(
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "L O G O",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.close),
                        ),
                      ],
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home', style: TextStyle(fontSize: 20)),
                    onTap: () {
                      Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Message', style: TextStyle(fontSize: 20)),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Message()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings', style: TextStyle(fontSize: 20)),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Settings()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.people),
                    title: Text('Account', style: TextStyle(fontSize: 20)),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Account()),
                      );
                    },
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
