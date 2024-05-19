

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hanoi_travel/home/favorite_page.dart';

import '../home/setting_page.dart';
import '../user.dart';
import 'about_page.dart';
import 'edit_profile.dart';
import 'logout_alert.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SettingScreenState();
  }
}

class _SettingScreenState extends State<SettingPage> {
  String fullName = User.registeredUsers[userId].fullname;
  String email = User.registeredUsers[userId].email;
  @override
  Widget build(BuildContext context) {
          return Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
                padding: const EdgeInsets.only(top: 35.0, bottom: 25.0, right: 15.0, left: 15.0),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(77, 210, 255, 0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    // Xử lý sự kiện khi nút được nhấn
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const EditProfilePage())
                    );
                    print("");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 90.0,
                            height: 90.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue, // Màu nền của khung ảnh
                            ),
                            child: Center(
                              child: ClipOval(
                                child: Image.network(
                                  'https://i.pinimg.com/736x/11/e4/4d/11e44d85743b28fa62121b5ae71a914b.jpg',
                                  width: 88.0,
                                  height: 88.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text(
                                fullName,
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                email,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),                // Profile
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                      ),
                      child: InkWell(
                        onTap: () {
                          // xu ly su kien
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const EditProfilePage())
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 35.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0), // Bo tròn viền
                                    color: const Color.fromRGBO(77, 210, 255, 0.3), // Màu nền
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    size: 20.0,
                                    color: Color.fromRGBO(77, 210, 255, 1),
                                  ),
                                ),
                                const SizedBox(width: 20.0),
                                Container(
                                  child: const Text(
                                    'Profile',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 25.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                                // color: Color.fromRGBO(211, 211, 211, 0.5), // Màu nền
                              ),
                              child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Color.fromRGBO(77, 210, 255, 1)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                      ),
                      child: InkWell(
                        onTap: () {
                          // xu ly su kien
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangePassword(
                                // historicalSite: historicalSites[index],
                              ),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 35.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0), // Bo tròn viền
                                    color: const Color.fromRGBO(204, 51, 255, 0.3), // Màu nền
                                  ),
                                  child: const Icon(
                                    Icons.key,
                                    size: 20.0,
                                    color: Color.fromRGBO(204, 51, 255, 1),
                                  ),
                                ),
                                const SizedBox(width: 20.0),
                                Container(
                                  child: const Text(
                                    'Change Password',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 25.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                                // color: Color.fromRGBO(211, 211, 211, 0.5), // Màu nền
                              ),
                              child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Color.fromRGBO(77, 210, 255, 1)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                      ),
                      child: InkWell(
                        onTap: () {
                          // xu ly su kien
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FavoritePage())
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 35.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0), // Bo tròn viền
                                    color: const Color.fromRGBO(233, 22, 64, 0.3), // Màu nền
                                  ),
                                  child: const Icon(
                                    Icons.favorite,
                                    size: 20.0,
                                    color: Color.fromRGBO(233, 22, 64, 1),
                                  ),
                                ),
                                const SizedBox(width: 20.0),
                                Container(
                                  child: const Text(
                                    'My Favovite',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 25.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                                // color: Color.fromRGBO(211, 211, 211, 0.5), // Màu nền
                              ),
                              child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Color.fromRGBO(77, 210, 255, 1)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                      ),
                      child: InkWell(
                        onTap: () {
                          // xu ly su kien
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const EditProfilePage())
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 35.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0), // Bo tròn viền
                                    color: const Color.fromRGBO(255, 219, 77, 0.3), // Màu nền
                                  ),
                                  child: const Icon(
                                    Icons.history,
                                    size: 20.0,
                                    color: Color.fromRGBO(255, 219, 77, 1),
                                  ),
                                ),
                                const SizedBox(width: 20.0),
                                Container(
                                  child: const Text(
                                    'Booking History',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 25.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                                // color: Color.fromRGBO(211, 211, 211, 0.5), // Màu nền
                              ),
                              child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Color.fromRGBO(77, 210, 255, 1)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                      ),
                      child: InkWell(
                        onTap: () {
                          // xu ly su kien
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const AboutPage(); // Sử dụng CustomDialog ở đây
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 35.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0), // Bo tròn viền
                                    color: const Color.fromRGBO(0, 230, 142, 0.3), // Màu nền
                                  ),
                                  child: const Icon(
                                    Icons.add_circle_outline,
                                    size: 20.0,
                                    color: Color.fromRGBO(0, 230, 142, 1),
                                  ),
                                ),
                                const SizedBox(width: 20.0),
                                Container(
                                  child: const Text(
                                    'About Us',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 25.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                                // color: Color.fromRGBO(0, 230, 142, 0.3), // Màu nền
                              ),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 12.0,
                                color: Color.fromRGBO(0, 230, 142, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                      ),
                      child: InkWell(
                        onTap: () {
                          // xu ly su kien
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const LogoutAlert(); // Sử dụng CustomDialog ở đây
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 35.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0), // Bo tròn viền
                                    color: const Color.fromRGBO(233, 22, 64, 0.3), // Màu nền
                                  ),
                                  child: const Icon(
                                    Icons.logout,
                                    size: 20.0,
                                    color: Color.fromRGBO(233, 22, 64, 1),
                                  ),
                                ),
                                const SizedBox(width: 20.0),
                                Container(
                                  child: const Text(
                                    'Log Out',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: 25.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0), // Bo tròn viền
                                // color: Color.fromRGBO(211, 211, 211, 0.5), // Màu nền
                              ),
                              child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12.0,
                                  color: Color.fromRGBO(233, 22, 64, 1)
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        }
      }