import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_text_field.dart';
import 'package:food_delivery_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //CONTROLLERS
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //LOGIN METHOD
  void login() {
    //CHECK FOR ACCOUNT CREDETENTIALS

    //NAVIGATE TO HOME PAGE
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //LOGO
            Icon(
              Icons.person_pin_circle,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 25),
            //INTRO TEXT
            Text(
              "Food delivered to your door!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 30),
            //EMAIL TEXTFIELD
            MyTextField(
              controller: emailController,
              hintText: "E-mail address",
              obscureText: false,
            ),
            SizedBox(height: 10),
            //PASSWORD TEXTFIELD
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            SizedBox(height: 20),
            //SIGN IN BUTTON
            MyButton(onTap: login, text: "Sign in"),
            SizedBox(height: 15),
            //REGISTER SECTION
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register here",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 12, 101, 173),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
