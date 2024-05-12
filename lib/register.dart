import 'package:flutter/material.dart';
import 'package:hanoi_travel/login.dart';
import 'package:hanoi_travel/user.dart';

// import 'forgot_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController usernameController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: myColor,
        image: DecorationImage(
          image: const AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
          colorFilter:
          ColorFilter.mode(myColor.withOpacity(0.2), BlendMode.dstATop),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(top: 50, child: _buildTop()),
            Positioned(bottom: 0, child: _buildBottom()),
          ],
        ),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.food_bank,
            size: 100,
            color: Colors.white,
          ),
          Text(
            "Register",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                letterSpacing: 2),
          )
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildGreyText("Please register with your information"),
        const SizedBox(height: 60),
        _buildGreyText("Username"),
        _buildInputField(usernameController),
        const SizedBox(height: 20),
        _buildGreyText("Fullname"),
        _buildInputField(fullnameController),
        const SizedBox(height: 20),
        _buildGreyText("Email address"),
        _buildInputField(emailController),
        const SizedBox(height: 20),
        _buildGreyText("Password"),
        _buildInputField(passwordController, isPassword: true),
        const SizedBox(height: 20),
        _buildRegisterButton(),
        const SizedBox(height: 20),
        _buildForgotPasswordButton(), // Add the "I forgot my password" button here
        const SizedBox(height: 20),
        // _buildOtherLogin(),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget _buildInputField(TextEditingController controller,
      {isPassword = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon:
        isPassword ? const Icon(Icons.remove_red_eye) : const Icon(Icons.done),
      ),
      obscureText: isPassword,
    );
  }

  void handleRegistration() {
    String username = usernameController.text;
    String fullname = fullnameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    // Kiểm tra xem có thể thêm tài khoản mới hay không
    if (username.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
      // Tạo một User mới từ thông tin nhận được
      User newUser = User(username: username, fullname: fullname, email: email, password: password);

      // Thêm User mới vào danh sách các tài khoản đã đăng ký
      User.registeredUsers.add(newUser);

      // Chuyển hướng về màn hình đăng nhập
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    } else {
      // Hiển thị thông báo lỗi nếu các trường đều không được điền
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all fields.')),
      );
    }
  }

  Widget _buildRegisterButton() {
    return ElevatedButton(
      onPressed: () {
        String username = usernameController.text;
        String fullname = fullnameController.text;
        String email = emailController.text;
        String password = passwordController.text;
        User.registerUser(username, fullname, email, password);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
      // onPressed: handleRegistration,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: const Text("REGISTER"),
    );
  }

  Widget _buildForgotPasswordButton() {
    return TextButton(
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const ForgotPage()),
        // );
      },
      style: TextButton.styleFrom(
        alignment: Alignment.center, // Align the whole button content to the middle.
      ),
      child: Center(
        child: _buildGreyText("I forgot my password"), // Align the text to the middle.
      ),
    );
  }

}
