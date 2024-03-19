import 'package:flutter/material.dart';
import 'package:login_form/PageLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_form/PageRegister.dart';
import 'package:login_form/PageWelcome.dart';

class PageLogin extends StatelessWidget {
  const PageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 600,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/boi.jpg', // Đường dẫn đến hình ảnh của bạn
                width: 200, // Độ rộng của hình ảnh
                height: 200, // Độ cao của hình ảnh
                fit: BoxFit.cover, // Để hình ảnh cover khu vực chỉ định
              ),
              SizedBox(height: 10),
              TextField(
                //Dùng decoration để style textfield
                decoration: InputDecoration(
                  hintText: 'Enter valid email id as abc@gmail.com',
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                //Dùng decoration để style textfield
                decoration: InputDecoration(
                  hintText: 'Enter secure password',
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Text('Forgot Password'),
              SizedBox(height: 10),
              SizedBox(
                width: 500.0,
                height: 50.0,
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed:() async {
                    var navigatorResult = await Navigator.push(context, new MaterialPageRoute(builder: (context) => PageWelcome()));
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 500.0,
                height: 50.0,
                child: ElevatedButton(
                  child: Text('New User? Create Account?'),
                  onPressed:() async {
                    var navigatorResult = await Navigator.push(context, new MaterialPageRoute(builder: (context) => PageRegister()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
