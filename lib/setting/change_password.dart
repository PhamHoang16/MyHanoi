import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../user.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _currentPasswordController =
  TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController =
  TextEditingController();
  String _errorMessage = '';

  String currentPassword = User.registeredUsers[userId].password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
        title: const Text(
          'Change Password',
          style: TextStyle(
            color: Colors.black,
          ),

        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network('https://i.pinimg.com/736x/11/e4/4d/11e44d85743b28fa62121b5ae71a914b.jpg'),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.blue),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50.0),
              Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _currentPasswordController,
                      obscureText: true,
                        decoration: InputDecoration(
                          label: Text("Current Password"), prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.zero)
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        obscureText: true,
                        controller: _newPasswordController,
                        decoration: InputDecoration(
                          label: Text("New Password"), prefixIcon: const Icon(Icons.mail),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.zero)
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        obscureText: true,
                        controller: _confirmNewPasswordController,
                        decoration: InputDecoration(
                          label: Text("Confirm New Password"), prefixIcon: const Icon(Icons.vpn_key),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.zero)
                          ),
                        ),
                      ),
                      const SizedBox(height: 70),
                      if (_errorMessage.isNotEmpty)
                        Text(
                          _errorMessage,
                          style: TextStyle(color: Colors.red),
                          textAlign: TextAlign.center,
                        ),
                      SizedBox(
                        height: 50.0,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {if (_currentPasswordController.text != currentPassword) {
                            setState(() {
                              _errorMessage = 'Current password is incorrect';
                            });
                            return;
                          }
                          if (_newPasswordController.text != '') {
                            // Kiểm tra mật khẩu mới
                            if (_newPasswordController.text !=
                                _confirmNewPasswordController.text) {
                              setState(() {
                                _errorMessage = 'New passwords do not match';
                              });
                              return;
                            } else {
                              User.changePassword(userId, _newPasswordController.text);
                              setState(() {
                                _errorMessage = 'Password changed successfully';
                                _currentPasswordController.clear();
                                _newPasswordController.clear();
                                _confirmNewPasswordController.clear();
                              });
                            }
                          } else
                            setState(() {
                              _errorMessage = '...';
                            });},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              side: BorderSide.none,
                              shape: const StadiumBorder()
                          ),
                          child: const Text(
                            'Confirm',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0
                            ),
                          ),
                        ),
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    )
    ;
  }
}