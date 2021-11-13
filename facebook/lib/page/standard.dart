import 'package:flutter/material.dart';

class StandardPage extends StatelessWidget {
  const StandardPage({Key? key}) : super(key: key);

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
                    'FACEBOOK',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )),
            Container(
              color: Colors.grey[700],
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: const Text(
                      'Tiêu chuẩn cộng đồng của Facebook',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                        'Tiêu chuẩn cộng đồng của Facebook nêu rõ những nội dung được phép và không được phép xuất hiện trên ứng dụng Facebook.'),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
