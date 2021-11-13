import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({Key? key}) : super(key: key);

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
                'Điều khoản dịch vụ',
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
              child: Text('Chào mừng bạn đến với Facebook!'),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                  'Facebook tạo ra các công nghệ và dịch vụ nhằm hỗ trợ mọi người kết nối với nhau, xây dựng cộng đồng và phát triển doanh nghiệp. Các Điều khoản này điều chỉnh việc bạn sử dụng Facebook, Messenger và các sản phẩm, tính năng, ứng dụng, dịch vụ, công nghệ cũng như phần mềm khác mà chúng tôi cung cấp (Sản phẩm của Facebook hoặc Sản phẩm), trừ khi chúng tôi nêu rõ là áp dụng các điều khoản riêng (và không áp dụng các điều khoản này). Các sản phẩm này do Facebook, Inc. cung cấp cho bạn.'),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                  'Bạn không mất phí sử dụng Facebook hay các sản phẩm và dịch vụ khác thuộc phạm vi điều chỉnh của những Điều khoản này. Thay vào đó, các doanh nghiệp và tổ chức sẽ phải trả tiền cho chúng tôi để hiển thị quảng cáo sản phẩm và dịch vụ của họ cho bạn. Khi sử dụng Sản phẩm của chúng tôi, bạn đồng ý để chúng tôi hiển thị quảng cáo mà chúng tôi cho rằng phù hợp với bạn cũng như sở thích của bạn. Chúng tôi sử dụng dữ liệu cá nhân của bạn để quyết định nên hiển thị quảng cáo nào cho bạn.'),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                  'Chúng tôi không bán dữ liệu cá nhân của bạn cho các nhà quảng cáo và cũng không chia sẻ thông tin trực tiếp nhận dạng bạn (chẳng hạn như tên, địa chỉ email hoặc thông tin liên hệ khác) với những đơn vị này trừ khi được bạn cho phép cụ thể. Thay vào đó, các nhà quảng cáo có thể cho chúng tôi biết thông tin như kiểu đối tượng mà họ muốn nhìn thấy quảng cáo và chúng tôi có thể hiển thị những quảng cáo ấy cho người có thể quan tâm. Chúng tôi báo cáo cho các nhà quảng cáo về hiệu quả quảng cáo, từ đó những đơn vị này có thể nắm được cách mọi người tương tác với nội dung của họ. Xem Phần 2 bên dưới để tìm hiểu thêm.'),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                  'Chính sách dữ liệu của chúng tôi giải thích cách chúng tôi thu thập và sử dụng dữ liệu cá nhân của bạn để quyết định hiển thị cho bạn quảng cáo nào, cũng như để cung cấp tất cả các dịch vụ khác được mô tả bên dưới. Bạn cũng có thể chuyển đến phần cài đặt bất kỳ lúc nào để xem lại các lựa chọn quyền riêng tư của mình đối với cách chúng tôi sử dụng dữ liệu của bạn.'),
            ),
          ]),
    );
  }
}
