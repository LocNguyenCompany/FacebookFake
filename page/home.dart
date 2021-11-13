import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;




Container story(String avt, String story, String name){
  return Container(
          margin:EdgeInsets.fromLTRB(0, 7, 10, 7),
          child: Stack(
            children: [  
              ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:Image.asset(
                      avt,
                      width: 120,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
              ),
                Container(
                     width: 45,
                        height: 45,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                  margin: EdgeInsets.all(10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        story,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                ),
        Container(
                    width: 90,
                    padding: EdgeInsets.fromLTRB(12, 160, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: [
                        Text(
                         name,
                          style:TextStyle(color:Colors.white),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        )
                      ],
                    ),
                  )            ],
          ),
        );
}

Container _storys(){
  return Container(
    margin:EdgeInsets.only(top:10),
  color: Colors.grey.shade800,
    height:220,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        story('images/content1.jpg','images/dhhh.jpg','Đại học hài hước'),
        story('images/content2.jpg','images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh'),
        story('images/content3.jpg','images/topdev.jpg','TopDev',),
       story('images/content1.jpg','images/dhhh.jpg','Đại học hài hước'),
        story('images/content2.jpg','images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh'),
        story('images/content3.jpg','images/topdev.jpg','TopDev',),
       story('images/content1.jpg','images/dhhh.jpg','Đại học hài hước'),
        story('images/content2.jpg','images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh'),
        story('images/content3.jpg','images/topdev.jpg','TopDev',),
       story('images/content1.jpg','images/dhhh.jpg','Đại học hài hước'),
        story('images/content2.jpg','images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh'),
        story('images/content3.jpg','images/topdev.jpg','TopDev',),
       story('images/content1.jpg','images/dhhh.jpg','Đại học hài hước'),
        story('images/content2.jpg','images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh'),
        story('images/content3.jpg','images/topdev.jpg','TopDev',),
       
        
        ],),);
}

Container _live() {
  return Container(
      color: Colors.grey.shade800,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 1,
              ),
            )),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'images/avt.jpeg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),

                // ignore: avoid_unnecessary_containers
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            hintStyle: TextStyle(color: Colors.white),
                            hintText: "Bạn đạng nghĩ gì?",
                            isDense: true, // Added this
                            contentPadding: EdgeInsets.all(15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(17, 5, 17, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                
                  child: Row(
                    children: [
                      Icon(Icons.video_call, color: Colors.red),
                      Text("Phát trực tiếp",style:TextStyle(color:Colors.white)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  decoration: BoxDecoration(
                      border: Border(
                    right: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    left: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  )),
                  child: Row(
                    children: [
                      Icon(Icons.image, color: Colors.green.shade400),
                      Text("Ảnh",style:TextStyle(color:Colors.white)),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.video_call_rounded, color: Colors.purple),
                      Text("Phòng họp mặt",style:TextStyle(color:Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ));
}

Container _post(String avt, String name, String time, IconData icon, String urlImage, String numberlike) {
  // ignore: avoid_unnecessary_containers

  return Container(
      color: Colors.grey.shade800,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      padding: EdgeInsets.fromLTRB(8, 4, 20, 8),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(15, 15, 5, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        avt,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Roboto')),
                            Row(
                              children: [
                                Text(time,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15,fontFamily: 'Roboto')),
                                Icon(
                                  icon,
                                  color:Colors.grey.shade100,
                                  size: 18,
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.keyboard_control_outlined, color: Colors.white),
                    Icon(Icons.close, color: Colors.white),
                  ],
                )
              ],
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DescriptionTextWidget(
                      text:
                          "Thiếu tướng Phan Văn Xựng cho biết, trong quá trình thực hiện nhiệm vụ, có trên 4.000 đồng chí bị nhiễm COVID-19: Cán bộ chiến sĩ quân đội luôn thể hiện bản lĩnh chính trị vững vàng, có tính tổ chức, tính kỉ luật, chặt chẽ, nghiêm minh. Luôn chủ động sáng tạo, sẵn sàng nhận và hoàn thành xuất sắc mọi nhiệm vụ được giao. Đặc biệt có đồng chí điều trị khỏi tình nguyện ở lại phục vụ. Nhiều đồng chí có người thân qua đời đã nén đau thương ở lại đơn vị để chống dịch",),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      urlImage,
                      width: 400,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue),
                              child: Icon(Icons.thumb_up,
                                  color: Colors.white, size: 15),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red),
                              child: Icon(Icons.favorite,
                                  color: Colors.white, size: 15),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text(numberlike,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16,fontFamily: 'Roboto')),
                            )
                          ],
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          padding: EdgeInsets.all(8),
                          child: const Text("1234 bình luận . 4321 chia sẻ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16,fontFamily: 'Roboto')),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 5),
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              const Icon(Icons.thumb_up_outlined,
                                  size: 20, color: Colors.white),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 7, 0, 5),
                                child: const Text("Thích",
                                    style: TextStyle(color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              const Icon(Icons.comment_outlined,
                                  size: 20, color: Colors.white),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 7, 0, 5),
                                child: const Text("Bình luận",
                                    style: TextStyle(color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationY(math.pi),
                                    child: Icon(Icons.reply_outlined,
                                        color: Colors.white)),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 7, 0, 5),
                                child: const Text("share",
                                    style: TextStyle(color: Colors.white)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ));
}

class posts extends StatefulWidget{
    State<posts> createState() => postsState();
}
class postsState extends State<posts>{
    @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.grey.shade900,
        child: ListView(
        //scrollDirection: Axis.horizontal,
        children: [
          _live(),
          _storys(),
          _post('images/dhhh.jpg','Đại học hài hước','3 giờ trước',Icons.public,'images/content1.jpg',"Tú +12345"),
          _post('images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh','08/11/2021',Icons.public,'images/content2.jpg',"Tú +12345"),
          _post('images/topdev.jpg','TopDev','08/11/2021',Icons.public,'images/content3.jpg',"Tú +12345"),
          _post('images/dhhh.jpg','Đại học hài hước','3 giờ trước',Icons.public,'images/content1.jpg',"Tú +12345"),
          _post('images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh','08/11/2021',Icons.public,'images/content2.jpg',"Tú +12345"),
          _post('images/topdev.jpg','TopDev','08/11/2021',Icons.public,'images/content3.jpg',"Tú +12345"),
          _post('images/dhhh.jpg','Đại học hài hước','3 giờ trước',Icons.public,'images/content1.jpg',"Tú +12345"),
          _post('images/xebuyt.jpg','Xe Buýt TP. Hồ Chí Minh','08/11/2021',Icons.public,'images/content2.jpg',"Tú +12345"),
          _post('images/topdev.jpg','TopDev','08/11/2021',Icons.public,'images/content3.jpg',"Tú +12345"),
        ],
      )
    );
  }
}

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  const DescriptionTextWidget({required this.text});

  @override
  _DescriptionTextWidgetState createState() =>
      new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 60) {
      firstHalf = widget.text.substring(0, 60);
      secondHalf = widget.text.substring(60, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Container(
      // ignore: prefer_const_constructors, unnecessary_new
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ? new Text(firstHalf)
          // ignore: unnecessary_new
          : new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'Roboto')),
                // ignore: unnecessary_new
                new InkWell(
                  // ignore: unnecessary_new
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      // ignore: unnecessary_new
                      new Text(
                        flag ? "show more" : "show less",
                        style: new TextStyle(color: Colors.grey.shade100,fontSize: 17,),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ],
            ),
    );
  }
}
