import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                Container(
                  child: const Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )),
            Text(
                'Công ty Facebook giờ có tên là Meta. Mặc dù tên công ty thay đổi nhưng chúng tôi vẫn tiếp tục cung cấp các sản phẩm tương tự, trong đó có ứng dụng Facebook của Meta. Chính sách dữ liệu và Điều khoản dịch vụ của chúng tôi giữ nguyên hiệu lực. Tên này không ảnh hưởng đến cách chúng tôi sử dụng hoặc chia sẻ dữ liệu. Tìm hiểu thêm về Meta và tầm nhìn của chúng tôi cho Metaverse.'),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: const Text(
                'Chính sách dữ liệu',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                  'Chính sách này mô tả thông tin mà chúng tôi xử lý để hỗ trợ Facebook, Instagram, Messenger và các sản phẩm cũng như tính năng khác do Facebook cung cấp (Sản phẩm của Facebook hoặc Sản phẩm). Bạn có thể tìm thêm thông tin và công cụ trong phần Cài đặt Facebook và Cài đặt Instagram.'),
            ),
          ]),
    );
  }
}
