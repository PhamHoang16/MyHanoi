import 'package:flutter/material.dart';

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

  Widget _buildRegisterButton() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username: ${usernameController.text}");
        debugPrint("Email: ${emailController.text}");
        debugPrint("Password: ${passwordController.text}");
        // Handle registration logic here
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: const Text("REGISTER"),
    );
  }

  // Widget _buildOtherLogin() {
  //   return Center(
  //     child: Column(
  //       children: [
  //         _buildGreyText("Or Register with"),
  //         const SizedBox(height: 10),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             Tab(icon: Image.asset("assets/facebook.png")),
  //             Tab(icon: Image.asset("assets/twitter.png")),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }

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
