
import 'package:flutter/material.dart';

import '../user.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EditProfilePage();
  }
}

class _EditProfilePage extends State<EditProfilePage>{
  String fullName = User.registeredUsers[userId].fullname;
  String email = User.registeredUsers[userId].email;
  Future<void> editField(String field) async{}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
            title: const Text(
                'Profile',
              style: TextStyle(
                color: Colors.black,
              ),

            ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:
            SingleChildScrollView(
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
                              decoration: InputDecoration(
                                label: Text(fullName), prefixIcon: const Icon(Icons.person),
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
                              readOnly: true,
                              decoration: InputDecoration(
                                label: Text(email), prefixIcon: const Icon(Icons.mail),
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
                              decoration: InputDecoration(
                                label: Text(""), prefixIcon: const Icon(Icons.vpn_key),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.zero)
                                ),
                              ),
                            ),
                            const SizedBox(height: 70),
                            SizedBox(
                              height: 50.0,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {Navigator.pop(context);},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    side: BorderSide.none,
                                    shape: const StadiumBorder()
                                ),
                                child: const Text(
                                  'Close',
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
    )
    );



}}
