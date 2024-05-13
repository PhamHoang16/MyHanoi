import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(3.0), // Để loại bỏ khoảng trắng xung quanh nội dung

      // Thay đổi shape để bo tròn viền của AlertDialog
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),

      content: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
            color: Color.fromRGBO(240, 248, 255, 1)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Widget title ở giữa
            const Center(
              child: Text(
                'Members',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0
                ),
              ),
            ),
            const SizedBox(height: 20), // Khoảng trắng giữa title và content

            // Widget content ở giữa
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://static.wikia.nocookie.net/bach-khoa-the-gioi-toan-thu/images/e/eb/Drm-nobi-nobita.jpg/revision/latest?cb=20200916115732',
                          width: 70.0,
                          height: 70.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Đỗ Hải",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://i.pinimg.com/564x/e3/f3/4d/e3f34de992ae4267f272550a5935447f.jpg',
                          width: 70.0,
                          height: 70.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                          "Phạm Hoàng",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://i.pinimg.com/564x/c2/a0/09/c2a0099bbddf9be08f3672f0cf197d5f.jpg',
                          width: 70.0,
                          height: 70.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                          "Dương",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://i.pinimg.com/564x/60/8a/4f/608a4f498d9f1ffcef0d2d40306a4941.jpg',
                          width: 70.0,
                          height: 70.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                          "Việt Cương",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://i.pinimg.com/564x/e1/f0/47/e1f0478d30eb7768372556bf8b4c7573.jpg',
                          width: 70.0,
                          height: 70.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                          "Chat GPT",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Xử lý khi nút được nhấn
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),

                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(58, 223, 206, 1), // Màu nền của nút
                    ),
                    elevation: MaterialStateProperty.all<double>(
                        1), // Độ nổi lên
                    shadowColor: MaterialStateProperty.all<Color>(
                        Colors.grey), // Màu đổ bóng
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10.0, top: 15.0, right: 10.0, bottom: 15.0),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 18, // Tùy chỉnh kích thước văn bản
                        color: Colors.white, // Màu văn bản
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
