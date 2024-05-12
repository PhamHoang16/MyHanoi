import 'package:flutter/material.dart';
import 'package:hanoi_travel/register.dart';
import 'package:hanoi_travel/user.dart';

import 'user.dart';
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

  String _errorMessage = '';
  String _username = ''; // Biến để lưu tài khoản
  String _password = ''; // Biến để lưu mật khẩu

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageHeight = screenHeight / 3; // Chiều cao của hình ảnh

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          // padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                child: Card(
                  margin: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/images/login.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: _usernameController,
                  onChanged: (value) {
                    setState(() {
                      _username = value; // Lưu mật khẩu khi thay đổi
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12), // Đặt bán kính cong cho đường viền
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                    obscureText: _obscureText,
                    controller: _passwordController,
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
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
              SizedBox(height: 20),
              if (_errorMessage.isNotEmpty)
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton(
                  onPressed: handleLogin,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade500),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Đăng nhập',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextButton(
                  onPressed: () {
                    // Thực hiện hành động khi nhấn nút Quên mật khẩu
                  },
                  child: Text(
                    'Quên mật khẩu ?',
                    style: TextStyle(
                      color: Colors.blue, // Màu văn bản xanh cho văn bản quên mật khẩu
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bạn chưa có tài khoản?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()), // Thay RegisterScreen() bằng màn hình Đăng ký của bạn
                      );
                    },
                    child: Text(
                      'Đăng ký?',
                      style: TextStyle(
                        color: Colors.blue, // Màu văn bản xanh cho văn bản Đăng ký
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void handleLogin() {
    String username = _usernameController.text;
    String password = _passwordController.text;
    int cnt = 0;
    // Duyệt qua danh sách người dùng đã đăng ký
    for (User user in User.registeredUsers) {
      // print(user.username + ' ' + user.password + '\n');
      if (user.username == username && user.password == password) {
        userId = cnt;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        return;
      }
      cnt++;
    }

    _errorMessage = 'Account or password is incorrect.';

  }

}
