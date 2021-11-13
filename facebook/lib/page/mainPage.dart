import 'package:fakefb/main.dart';
import 'package:fakefb/page/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'home.dart';
import 'friend.dart';
import 'inforPage.dart';
import 'policypage.dart';
import 'homepage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Container _Notifi() {
  return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      padding: EdgeInsets.fromLTRB(8, 4, 20, 8),
      child: Row(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'images/avt.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Người yêu của tú",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                ],
              ))
        ],
      ));
}

Container _Notifis() {
  return Container(
      color: Colors.grey.shade800,
      child: ListView(
        children: [
          _Notifi(),
          _Notifi(),
          _Notifi(),
          _Notifi(),
          _Notifi(),
          _Notifi(),
          _Notifi(),
          _Notifi(),
          _Notifi(),
        ],
      ));
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unnecessary_new
  Widget post = new posts();
  Widget friend = new friends();
  Widget notifi = _Notifis();
  Widget profil = inforPage();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: AppBar(
              backgroundColor: Colors.grey.shade800,
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.mobile_friendly_outlined)),
                  Tab(icon: Icon(Icons.add_to_queue)),
                  Tab(icon: Icon(Icons.gamepad)),
                  Tab(icon: Icon(Icons.notifications)),
                  Tab(icon: Icon(Icons.menu)),
                ],
              ),
              title: Text(
                widget.title,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          body: TabBarView(
            children: [
              post,
              friend,
              post,
              post,
              notifi,
              profil,
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage("images/avt.jpeg"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Nguyễn Tấn Lộc",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('Information'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profilePage()));
                  },
                ),
                ListTile(
                  title: const Text('Security'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PolicyPage()));
                  },
                ),
                ListTile(
                  title: const Text('Sign out'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
