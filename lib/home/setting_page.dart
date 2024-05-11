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
    return Scaffold(
      appBar: AppBar(
        title: Text('Tài khoản'),
        centerTitle: true, // Đặt tiêu đề ở giữa
        backgroundColor: Colors.grey[200], // Màu nền xanh lá cây nhẹ
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
              color: Colors.lightGreen[100], // Màu nền xanh nhạt cho phần chỉnh sửa thông tin cá nhân
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
              color: Colors.lightGreen[100], // Màu nền xanh nhạt cho phần đổi mật khẩu
              borderRadius: BorderRadius.circular(10), // Bo tròn góc của khung
            ),
            child: ListTile(
              leading: Icon(Icons.lock),
              title: Text('Đổi mật khẩu'),
              onTap: () {
                // Xử lý khi nhấn vào mục này
              },
            ),
          ),
          SizedBox(height: 16), // Khoảng cách giữa các ListTile
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreen[100], // Màu nền xanh nhạt cho phần danh sách địa điểm yêu thích
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
              color: Colors.lightGreen[100], // Màu nền xanh nhạt cho phần lịch sử đặt tour
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
              color: Colors.lightGreen[100], // Màu nền xanh nhạt cho phần đăng xuất
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
    );
  }
}
