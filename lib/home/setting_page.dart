import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hanoi_travel/login.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageStage createState() => _SettingPageStage();
}

class _SettingPageStage extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
              backgroundImage: AssetImage('assets/images/avt.jpg'), // Thay thế 'path_to_your_image' bằng đường dẫn đến hình ảnh người dùng
              radius: 30, // Đặt bán kính của hình ảnh người dùng
            ),
            title: Text('Hoang Pham'),
            // onTap: () {
            //   // Xử lý khi nhấn vào mục này
            // },
          ),
          SizedBox(height: 30.0),
          Container(
            decoration: BoxDecoration(
              color: Colors.green.shade100, // Màu nền xanh nhạt cho phần chỉnh sửa thông tin cá nhân
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
              color: Colors.green.shade100, // Màu nền xanh nhạt cho phần đổi mật khẩu
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
              color: Colors.green.shade100, // Màu nền xanh nhạt cho phần danh sách địa điểm yêu thích
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
              color: Colors.green.shade100, // Màu nền xanh nhạt cho phần lịch sử đặt tour
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
              color: Colors.green.shade100, // Màu nền xanh nhạt cho phần đăng xuất
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
    )
    );
  }

}

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _currentPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                controller: _currentPasswordController,
                decoration: InputDecoration(
                  labelText: 'Current Password',
                  border: InputBorder.none,
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                controller: _newPasswordController,
                decoration: InputDecoration(
                  labelText: 'New Password',
                  border: InputBorder.none,
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  labelText: 'Confirm New Password',
                  border: InputBorder.none,
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingPage()),
                );
              },
              child: Text('Change Password'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}