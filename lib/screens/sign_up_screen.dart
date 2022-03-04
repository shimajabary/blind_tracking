import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TapGestureRecognizer _tapGestureRecognizer;
  late TextEditingController _textEditingController;
  late TextEditingController _passwordEditingController;
  late TextEditingController _phoneEditingController;

// بنفعش ياخدو قيم نصية فارغة
  String? _emailErrorText;

  String? _passwordErrorText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = navToReg;
    _textEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    _phoneEditingController = TextEditingController();
  }

  void navToReg() =>
      Navigator.pushReplacementNamed(context, '/login_screen');

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tapGestureRecognizer.dispose();
    _textEditingController.dispose();
    _passwordEditingController.dispose();
    _phoneEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/signup_login_screen');
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0XFF989595),
            ),
          ),
          elevation: 0,
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsetsDirectional.only(start: 39, end: 39),
          child: Column(children: [
            Container(
              child:Image.asset('images/sign_up.png'),
              color: Colors.transparent,
              // width: 256.38,
              // height: 251.65,
            ),
            SizedBox(
              height: 45,
            ),
            TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.black45,
                ),
                decoration: InputDecoration(
                  hintText: 'اسم المستخدم',
                  hintMaxLines: 1,
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                      width: 1,
                    ),
                  ),
                )),
            SizedBox(
              height: 25,
            ),
            TextField(
                obscureText: true,
                keyboardType: TextInputType.numberWithOptions(
                    decimal: false, signed: false),
                style: TextStyle(
                  color: Colors.black45,
                ),
                decoration: InputDecoration(
                  hintText: 'كلمة السر',
                  hintMaxLines: 1,
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                      width: 1,
                    ),
                  ),
                )),
            SizedBox(height: 25),
            TextField(
              style: TextStyle(
                color: Colors.black45,
              ),
              decoration: InputDecoration(
                  hintText: 'رقم الجوال',
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 15),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      //عشان تخفي العرض لازم تعمل اللون TRANSPARENT
                      width: 1,
                    ),
                  ),
                  ),
            ),
            SizedBox(
              height: 41,
            ),
            ElevatedButton(
              onPressed:(){
                Navigator.pushReplacementNamed(context, '/login_screen');

              },
              // _performLogin,
              child: Text(
                'انشاء حساب',
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
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'يوجد لديك حساب؟ ',
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                    children: [
                      TextSpan(),
                      TextSpan(

                        recognizer: _tapGestureRecognizer,
                        text: 'تسجيل دخول',
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ]),
              ),
            ),
          ]),
        )));
  }

  void _performLogin() {
    if (_checkData()) {
      _login;
    }
  }

  ////////////////////////////////////////////////////
  bool _checkData() {
    if (_textEditingController.text.isEmpty &&
        _passwordEditingController.text.isEmpty &&
        _phoneEditingController.text.isEmpty) {
      controlErrorText();
      return true;
    } else {
      controlErrorText();

      // ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text('Enter requiered data',
      //     ),
      //   backgroundColor: Colors.red,
      //       behavior: SnackBarBehavior.floating,
      // ),
      // );
      return false;
    }
  }

//////////////////////////////////////////
  void controlErrorText() {
    setState(() {
      _emailErrorText =
          _textEditingController.text.isEmpty ? 'enter required data' : null;
      _passwordErrorText = _passwordEditingController.text.isEmpty
          ? 'enter required password'
          : null;
    });
  }

  //////////////////////////////////////
  void _login() {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(
          content: Text('LOgged in successfully'),
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 2),
        ))
        .closed
        .then((value) =>
            Navigator.pushReplacementNamed(context, '/login_screen'));
  }
}
