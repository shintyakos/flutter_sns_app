import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sns_app/view/screen.dart';
import 'package:flutter_sns_app/view/start_up/create_account_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text("Flutterラボ SNS", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                    width: 300,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(hintText: "メールアドレス"),
                    )
                ),
              ),
              Container(
                  width: 300,
                  child: TextField(
                    controller: passController,
                    decoration: InputDecoration(hintText: "パスワード"),
                  )
              ),
              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: "アカウントを作成していない方は"),
                    TextSpan(
                        text: "こちら",
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountPage()));
                        }
                    ),
                  ]
                ),
              ),
              SizedBox(height: 70,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Screen()));
                  },
                  child: Text("ログイン")
              )
            ],
          ),
        ),
      ),
    );
  }
}
