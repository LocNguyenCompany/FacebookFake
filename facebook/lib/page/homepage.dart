import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'rulespage.dart';
import 'policypage.dart';
import 'standard.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                'Điều khoản và chính sách',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  color: Colors.grey[100],
                ),
              ),
            ),
            Divider(
              color: Colors.grey[600],
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RulesPage()),
                  );
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.book_outlined,
                          color: Colors.grey[600],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Điều khoản dịch vụ',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.grey[100],
                            )),
                        Text('Điều khoản bạn đồng ý khi sử dụng Facebook.',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              color: Colors.grey[600],
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey[600],
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DataPage()),
                  );
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.lock_outline,
                          color: Colors.grey[600],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chính sách dữ liệu',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.grey[100],
                            )),
                        Text('Thông tin chúng tôi nhận và cách sử dụng.',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              color: Colors.grey[600],
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey[600],
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StandardPage()),
                  );
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.lock_clock,
                          color: Colors.grey[600],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tiêu chuẩn cộng đồng',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.grey[100],
                            )),
                        Text(
                          'Điều không được phép và cách báo cáo các hành vi lăng mạ/lạm dụng/ngược đãi',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey[600],
            ),
            Container(
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.more_horiz,
                          color: Colors.grey[600],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tài nguyên khác',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.grey[100],
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey[600],
            ),
          ],
        ));
  }
}
