import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late TapGestureRecognizer _tapGestureRecognizer;
  late TapGestureRecognizer _tapGestureRecognizer2;
  late TextEditingController _textEditingController;
  late TextEditingController _passwordEditingController;

// بنفعش ياخدو قيم نصية فارغة
  String? _emailErrorText;

  String? _passwordErrorText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = navToSignUp;
    _tapGestureRecognizer2 = TapGestureRecognizer()..onTap = navToForgetPass;
    _textEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  void navToSignUp() =>
      Navigator.pushReplacementNamed(context, '/sign_up_screen');
void navToForgetPass() =>
      Navigator.pushReplacementNamed(context, '/forget_password_screen');

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tapGestureRecognizer.dispose();
    _tapGestureRecognizer2.dispose();
    _textEditingController.dispose();
    _passwordEditingController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/blind_home_screen');
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            ),
          ),
          elevation: 0,
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsetsDirectional.only(start: 39, end: 39),
          child: Column(children: [
            Container(
              // color: Colors.grey,
              child: Image.asset('images/login.png'),

            ),
            SizedBox(
              height: 36.1,
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
            SizedBox(height: 18),
            Center(
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(

                    style: TextStyle(color: Colors.black45, fontSize: 16),
                    children: [
                      TextSpan(

                        recognizer: _tapGestureRecognizer2,
                    text: 'هل نسيت كلمة السر؟',                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 56,
            ),
            ElevatedButton(
              onPressed:() {
                Navigator.pushReplacementNamed(context, '/main_screen');
              },
              // _performLogin,
              child: Text(
                'تسجيل الدخول',
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
            SizedBox(height: 26),
            Center(
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: 'لا امتلك حساب؟',
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                    children: [
                      TextSpan(),
                      TextSpan(
                        recognizer: _tapGestureRecognizer,
                        text: ' انشاء حساب',
                        style: TextStyle(
                            color: Colors.blue.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ]),
              ),
            )
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
        _passwordEditingController.text.isEmpty ) {
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
            Navigator.pushReplacementNamed(context, '/main_screen'));
  }
}
