import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

Container _Friend(String avt, String name, String numberfriend) {
  return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      padding: EdgeInsets.fromLTRB(8, 4, 20, 8),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  avt,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child:  Text(name,
                          style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Roboto')),
                    ),
                    Container(
                      child:  Text(numberfriend,
                          style: TextStyle(color: Colors.grey, fontSize: 17,fontFamily: 'Roboto')),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        width: 150,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              'Add friend',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ))),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        width: 150,
                        margin: EdgeInsets.only(left: 5),
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.grey.shade500,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Delete',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )))
                  ],
                ),
              ],
            ),
          )
        ],
      ));
}

class friends extends StatefulWidget {
  State<friends> createState() => friendsState();
}

class friendsState extends State<friends> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey.shade800,
        child: ListView(
          children: [
            _Friend('images/dhhh.jpg','Đại học hài hước','3 bạn chung'),
            _Friend('images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh','10 bạn chung'),
            _Friend('images/topdev.jpg','TopDev','100 bạn chung'),
            _Friend('images/avt.jpeg','Trần Đức Anh Tú','1000000000 bạn chung'),
            _Friend('images/dhhh.jpg','Đại học hài hước','3 bạn chung'),
            _Friend('images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh','10 bạn chung'),
            _Friend('images/topdev.jpg','TopDev','100 bạn chung'),
            _Friend('images/avt.jpeg','Trần Đức Anh Tú','1000000000 bạn chung'),
            _Friend('images/dhhh.jpg','Đại học hài hước','3 bạn chung'),
            _Friend('images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh','10 bạn chung'),
            _Friend('images/topdev.jpg','TopDev','100 bạn chung'),
            _Friend('images/avt.jpeg','Trần Đức Anh Tú','1000000000 bạn chung'),
            _Friend('images/dhhh.jpg','Đại học hài hước','3 bạn chung'),
            _Friend('images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh','10 bạn chung'),
            _Friend('images/topdev.jpg','TopDev','100 bạn chung'),
            _Friend('images/avt.jpeg','Trần Đức Anh Tú','1000000000 bạn chung'),
          ],
        ));
  }
}
