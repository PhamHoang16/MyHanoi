
import 'package:flutter/material.dart';

import '../login.dart';

class LogoutAlert extends StatelessWidget {
  const LogoutAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(
          3.0), // Để loại bỏ khoảng trắng xung quanh nội dung

      // Thay đổi shape để bo tròn viền của AlertDialog
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),

      content: Container(
        padding: const EdgeInsets.all(30.0),
        decoration:
            const BoxDecoration(color: Color.fromRGBO(240, 248, 255, 1)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Widget title ở giữa
            const Center(
              child: Text(
                'Are you sure?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            const SizedBox(height: 40), // Khoảng trắng giữa title và content

            // Widget content ở giữa
            // Center(
            //   child: Text('Đây là nội dung của cửa sổ nổi.'),
            // ),
            // Widget actions
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Xử lý khi nút được nhấn
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        // side: BorderSide(
                        //     color: Colors.grey, width: 0.3),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(255, 250, 240, 1), // Màu nền của nút
                    ),
                    elevation:
                        MaterialStateProperty.all<double>(1), // Độ nổi lên
                    shadowColor: MaterialStateProperty.all<Color>(
                        Colors.grey), // Màu đổ bóng
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 15.0, right: 10.0, bottom: 15.0),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 18, // Tùy chỉnh kích thước văn bản
                        color: Colors.black54, // Màu văn bản
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Xử lý khi nút được nhấn
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromRGBO(58, 223, 206, 1), // Màu nền của nút
                    ),
                    elevation:
                        MaterialStateProperty.all<double>(1), // Độ nổi lên
                    shadowColor: MaterialStateProperty.all<Color>(
                        Colors.grey), // Màu đổ bóng
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 15.0, right: 10.0, bottom: 15.0),
                    child: const Text(
                      'Log out',
                      style: TextStyle(
                        fontSize: 18, // Tùy chỉnh kích thước văn bản
                        color: Colors.white, // Màu văn bản
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
