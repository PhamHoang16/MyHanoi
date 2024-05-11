import 'package:flutter/material.dart';

import 'home.dart';
import 'home/home_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true; // Ban đầu ẩn mật khẩu
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();

  String _username = ''; // Biến để lưu tài khoản
  String _password = ''; // Biến để lưu mật khẩu

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight / 3; // Chiều cao của hình ảnh

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: imageHeight + 10.0, // Thêm 10 pixel để cong lên
              child: ClipPath(
                clipper: InvertedCurveClipper(imageHeight),
                child: Image.asset(
                  'assets/images/login.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Tài khoản',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  obscureText: _obscureText,
                  controller: _passwordController,
                  onChanged: (value) {
                    setState(() {
                      _password = value; // Lưu mật khẩu khi thay đổi
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Mật khẩu',
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText; // Đảo ngược trạng thái ẩn/mở mật khẩu
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen), // Màu nền lightgreen
                ),
                child: SizedBox(
                  width: double.infinity, // Giãn button ra toàn bộ chiều rộng của khung nhập
                  child: Text(
                    'Đăng nhập',
                    textAlign: TextAlign.center, // Căn giữa nội dung trong button
                    style: TextStyle(color: Colors.white),
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

class InvertedCurveClipper extends CustomClipper<Path> {
  final double imageHeight;

  InvertedCurveClipper(this.imageHeight);

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 20, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
