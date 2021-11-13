import 'package:fakefb/page/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:async';

class inforPage extends StatefulWidget {
  const inforPage({Key? key}) : super(key: key);

  @override
  State<inforPage> createState() => _inforPageState();
}

class _inforPageState extends State<inforPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.grey[900],
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(""),
                IconButton(onPressed: () {}, icon: Icon(Icons.search))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => profilePage()));
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage("images/avt.jpeg"),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(15, 0, 0, 5),
                                    child: Text(
                                      "Nguyễn Tấn Lộc",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    child: Text("Xem trang cá nhân của bạn",
                                        style: TextStyle(color: Colors.white)),
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          _buildList(
            Icons.group,
            Colors.white,
            Colors.blue,
            "Nhóm",
          ),
          _buildList(
            Icons.house_rounded,
            Colors.blue,
            Colors.transparent,
            "MarketPlace",
          ),
          _buildList(
            Icons.live_tv,
            Colors.blue,
            Colors.transparent,
            "Video",
          ),
          _buildList(
            Icons.alarm,
            Colors.blue,
            Colors.transparent,
            "Kỷ niệm",
          ),
          _buildList(
            Icons.flag,
            Colors.blue,
            Colors.transparent,
            "Trang",
          ),
          _buildList(
            Icons.calendar_today_outlined,
            Colors.white,
            Colors.transparent,
            "Sự kiện",
          ),
          _buildList(
            Icons.gamepad_outlined,
            Colors.blue,
            Colors.transparent,
            "Game",
          ),
          _buildList(
            Icons.backpack,
            Colors.brown,
            Colors.transparent,
            "Việc làm",
          ),
        ],
      ),
    ));
  }
}

Container _buildList(
    IconData icon, Color iconColor, Color bgIconcolor, String text) {
  return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[800],
            ),
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: bgIconcolor,
                  ),
                  child: Icon(icon, color: iconColor, size: 25),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          )));
}
