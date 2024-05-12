import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hanoi_travel/login.dart';
import 'package:hanoi_travel/user.dart';
import '../user.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);
  
  @override
  _SettingPageStage createState() => _SettingPageStage();
}

class _SettingPageStage extends State<SettingPage> {

  @override
  Widget build(BuildContext context) {
    String fullName = User.registeredUsers[userId].fullname;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Tài khoản'),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 30.0),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/avt.jpg'), // Thay thế 'path_to_your_image' bằng đường dẫn đến hình ảnh người dùng
              radius: 30, // Đặt bán kính của hình ảnh người dùng
            ),
            title: Text(
              fullName,
            ),
            // onTap: () {
            //   // Xử lý khi nhấn vào mục này
            // },
          ),
          SizedBox(height: 30.0),
          Container(
            decoration: BoxDecoration(
              color: Colors.green
                  .shade100, // Màu nền xanh nhạt cho phần chỉnh sửa thông tin cá nhân
              borderRadius: BorderRadius.circular(10), // Bo tròn góc của khung
            ),
            child: ListTile(
              leading: Icon(Icons.edit),
              title: Text('Chỉnh sửa thông tin cá nhân'),
              onTap: () {
                // Xử lý khi nhấn vào mục này
              },
            ),
          ),
          SizedBox(height: 16), // Khoảng cách giữa các ListTile
          Container(
            decoration: BoxDecoration(
              color: Colors
                  .green.shade100, // Màu nền xanh nhạt cho phần đổi mật khẩu
              borderRadius: BorderRadius.circular(10), // Bo tròn góc của khung
            ),
            child: ListTile(
              leading: Icon(Icons.lock),
              title: Text('Đổi mật khẩu'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangePassword(
                        // historicalSite: historicalSites[index],
                        ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16), // Khoảng cách giữa các ListTile
          Container(
            decoration: BoxDecoration(
              color: Colors.green
                  .shade100, // Màu nền xanh nhạt cho phần danh sách địa điểm yêu thích
              borderRadius: BorderRadius.circular(10), // Bo tròn góc của khung
            ),
            child: ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Danh sách địa điểm yêu thích'),
              onTap: () {
                // Xử lý khi nhấn vào mục này
              },
            ),
          ),
          SizedBox(height: 16), // Khoảng cách giữa các ListTile
          Container(
            decoration: BoxDecoration(
              color: Colors.green
                  .shade100, // Màu nền xanh nhạt cho phần lịch sử đặt tour
              borderRadius: BorderRadius.circular(10), // Bo tròn góc của khung
            ),
            child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Lịch sử đặt tour'),
              onTap: () {
                // Xử lý khi nhấn vào mục này
              },
            ),
          ),
          SizedBox(height: 16), // Khoảng cách giữa các ListTile
          Container(
            decoration: BoxDecoration(
              color:
                  Colors.green.shade100, // Màu nền xanh nhạt cho phần đăng xuất
              borderRadius: BorderRadius.circular(10), // Bo tròn góc của khung
            ),
            child: ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Đăng xuất'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _currentPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController = TextEditingController();
  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
        backgroundColor: Colors.grey[200], // Xám nhạt
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            TextFormField(
              controller: _currentPasswordController,
              decoration: InputDecoration(
                labelText: 'Current Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _newPasswordController,
              decoration: InputDecoration(
                labelText: 'New Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _confirmNewPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm New Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            if (_errorMessage.isNotEmpty)
              Text(
                _errorMessage,
                style: TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ElevatedButton(
              onPressed: () {
                // Kiểm tra mật khẩu hiện tại
                if (_currentPasswordController.text != User.registeredUsers[userId].password) {
                  setState(() {
                    _errorMessage = 'Current password is incorrect';
                  });
                  return;
                }
                if(_newPasswordController.text != ''){
                  // Kiểm tra mật khẩu mới
                  if (_newPasswordController.text != _confirmNewPasswordController.text) {
                    setState(() {
                      _errorMessage = 'New passwords do not match';
                    });
                    return;
                  } else {
                    setState(() {
                      _errorMessage = 'Password changed successfully';
                      _currentPasswordController.clear();
                      _newPasswordController.clear();
                      _confirmNewPasswordController.clear();
                    });
                  }
                } else setState(() {
                  _errorMessage = '...';
                });

              },
              child: Text('Change Password'),
            ),
          ],
        ),
      ),
    );
  }
}
