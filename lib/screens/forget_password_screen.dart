import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreen createState() => _ForgetPasswordScreen();
}

class _ForgetPasswordScreen extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login_screen');
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0XFF989595),
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 37),
          children: [
          SizedBox(height: 21.6,),
          Container(
            child: Image.asset('images/forget_password.png'),

          ),
            SizedBox(height: 36.7,),
            Text('تم ارسال الرمز الخاص بك على الرقم 059*****06'
              ,style: TextStyle(
                  fontSize: 16,
                  color: Color(0XFF134878)
              ),),
            SizedBox(height: 20,),
            Text('ادخل رمز التاكيد',style: TextStyle(
              fontSize: 16,
              color: Color(0XFF134878)
            ),),
            Row(children: [
              SizedBox(
                width: 62,
                height: 92,
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(
                      decimal: false, signed: false),
                  decoration: InputDecoration(
                    
                   fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              SizedBox(
                width: 62,
                height: 92,
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(
                      decimal: false, signed: false),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                      borderSide: BorderSide(
                        color: Colors.grey,
                        //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              SizedBox(
                width: 62,
                height: 92,
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(
                      decimal: false, signed: false),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                      borderSide: BorderSide(
                        color: Colors.grey,
                        //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              SizedBox(
                width: 62,
                height: 92,
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(
                      decimal: false, signed: false),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                      borderSide: BorderSide(
                        color: Colors.grey,
                        //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              

            ],),
            SizedBox(height: 9,),
            Text('اعادة الارسال'
              ,style: TextStyle(
                  fontSize: 15,
                  color: Color(0XFF134878),
                fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/reset_password_screen');

              },
              child: Text(
                ' تاكيد',
                style: TextStyle(fontFamily: 'cairo', fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff134878),
                minimumSize: Size(354, 74),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
        ],),
      )
    );
  }
  void _performLogin() {
//     if (_checkData()) {
//       _login;
//     }
  }
//
//   ////////////////////////////////////////////////////
//   bool _checkData() {
//     if (_password1EditingController.text.isEmpty &&
//         _password2EditingController.text.isEmpty) {
//       controlErrorText();
//       return true;
//     } else {
//       controlErrorText();
//
//       // ScaffoldMessenger.of(context).showSnackBar(
//       //     SnackBar(content: Text('Enter requiered data',
//       //     ),
//       //   backgroundColor: Colors.red,
//       //       behavior: SnackBarBehavior.floating,
//       // ),
//       // );
//       return false;
//     }
//   }
//
// //////////////////////////////////////////
//   void controlErrorText() {
//     setState(() {
//       _emailErrorText = _password1EditingController.text.isEmpty
//           ? 'enter required data'
//           : null;
//       _passwordErrorText = _password2EditingController.text.isEmpty
//           ? 'enter required password'
//           : null;
//     });
//   }
//
//   //////////////////////////////////////
//   void _login() {
//     ScaffoldMessenger.of(context)
//         .showSnackBar(SnackBar(
//       content: Text('LOgged in successfully'),
//       behavior: SnackBarBehavior.floating,
//       duration: Duration(seconds: 2),
//     ))
//         .closed
//         .then((value) =>
//         Navigator.pushReplacementNamed(context, '/login_screen'));
//   }
}
