import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:async';
import '../main.dart';

class profilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black45, Colors.black])),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("images/avt.jpeg"),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Nguyễn Tấn Lộc",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      clipBehavior: Clip.antiAlias,
                      color: Colors.white,
                      elevation: 8.0,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  "Friend",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "300",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  "Post",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "500",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  "Follower",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "10.000",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildList("Email: ", "Loc@gmail.com"),
            _buildList("Phone: ", "034648xxxx"),
          ],
        ),
        floatingActionButton: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign out",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

Container _buildList(String title, String content) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                content,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.white,
            ))
      ],
    ),
  );
}
