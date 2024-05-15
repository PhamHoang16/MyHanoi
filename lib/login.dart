import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hanoi_travel/register.dart';
import 'package:hanoi_travel/restaurant/restaurant_page.dart';
import 'package:hanoi_travel/text_utils.dart';
import 'package:hanoi_travel/user.dart';

import 'home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true; // Ban đầu ẩn mật khẩu
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _errorMessage = '';
  String _username = ''; // Biến để lưu tài khoản
  String _password = ''; // Biến để lưu mật khẩu

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg1.jpg'), fit: BoxFit.fill),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 500,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.1),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Center(
                            child: TextUtil(
                              text: "Login",
                              weight: true,
                              size: 30,
                            )),
                        const Spacer(),
                        TextUtil(
                          text: "Username",
                        ),
                        Container(
                          height: 35,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.white))),
                          child: TextFormField(
                            controller: _usernameController,
                            onChanged: (value) {
                              setState(() {
                                _username = value; // Lưu mật khẩu khi thay đổi
                              });
                            },
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.perm_identity,
                                color: Colors.white,
                              ),
                              fillColor: Colors.white,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const Spacer(),
                        TextUtil(
                          text: "Password",
                        ),
                        Container(
                          height: 35,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.white))),
                          child: TextFormField(
                            obscureText: _obscureText,
                            controller: _passwordController,
                            onChanged: (value) {
                              setState(() {
                                _password = value; // Lưu mật khẩu khi thay đổi
                              });
                            },
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText ? Icons.visibility : Icons.visibility_off,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText; // Đảo ngược trạng thái ẩn/mở mật khẩu
                                  });
                                },
                              ),
                              fillColor: Colors.white,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        if (_errorMessage.isNotEmpty)
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  _errorMessage,
                                  style: TextStyle(color: Colors.red.shade600),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: ElevatedButton(
                            onPressed: handleLogin,
                            // onPressed: () {
                            //   Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                            // },
                            child: Center(
                              child: TextUtil(
                                text: "Log In",
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: TextUtil(
                                    text: "Don't have an account?",
                                    size: 14,
                                    weight: true)),
                            SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterPage()), // Thay RegisterScreen() bằng màn hình Đăng ký của bạn
                                );
                              },
                              child: TextUtil(
                                text: "REGISTER",
                                size: 14,
                                weight: true,
                                color: Colors.lightBlue.shade300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
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
      print(user.username + ' ' + user.password + '\n');
      if (user.username == username && user.password == password) {
        setState(() {
          _errorMessage = '';
        });
        userId = cnt;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
        return;
      }
      cnt++;
    }
    setState(() {
      _errorMessage = 'Account or password is invalid.';
    });
  }
}
