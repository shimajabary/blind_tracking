import 'package:flutter/material.dart';

class SignUpLoginScreen extends StatelessWidget {
  const SignUpLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 37, end: 37),
          child: Column(
            children: [
              SizedBox(
                height: 146,
              ),
              Container(

                child: Image.asset('images/signup_login.png'),

              ),
              SizedBox(
                height: 77.4,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login_screen');
                },
                child: Text('تسجيل دخول',style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff134878),
                  minimumSize: Size(354, 77),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 33,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/signup_screen');
                },
                child: Text('انشاء حساب',style: TextStyle(
                    fontFamily: 'cairo',fontSize: 20),),
                style: ElevatedButton.styleFrom(

                  primary: Color(0xff134878),
                  minimumSize: Size(354, 77),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(10),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
