import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ResetPasswordScreen createState() => _ResetPasswordScreen();
}

class _ResetPasswordScreen extends State<ResetPasswordScreen> {
  late TextEditingController _password1EditingController;
  late TextEditingController _password2EditingController;

  // بنفعش ياخدو قيم نصية فارغة
  String? _emailErrorText;

  String? _passwordErrorText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _password1EditingController = TextEditingController();
    _password2EditingController = TextEditingController();
  }

  // void navToReg() =>
  //     Navigator.pushReplacementNamed(context, '/register_screen');

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _password1EditingController.dispose();
    _password2EditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'اعادة تعيين كلمة المرور',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0XFF134878)),
          ),
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
            child: Padding(
          padding: EdgeInsetsDirectional.only(start: 39, end: 39),
          child: Column(children: [
            SizedBox(
              height: 50.3,
            ),
            Container(
              child: Image.asset('images/reset_password.png'),

            ),
            SizedBox(
              height: 51.6,
            ),
            TextField(
                obscureText: true,
                keyboardType: TextInputType.numberWithOptions(
                    decimal: false, signed: false),
                style: TextStyle(
                  color: Colors.black45,
                ),
                decoration: InputDecoration(
                  hintText: 'كلمة المرور',
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
                obscureText: true,
                keyboardType: TextInputType.numberWithOptions(
                    decimal: false, signed: false),
                style: TextStyle(
                  color: Colors.black45,
                ),
                decoration: InputDecoration(
                  hintText: 'تاكيد كلمة المرور',
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
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/login_screen');

              },
              child: Text(
                'اعادة تعيين',
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
    if (_password1EditingController.text.isEmpty &&
        _password2EditingController.text.isEmpty) {
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
      _emailErrorText = _password1EditingController.text.isEmpty
          ? 'enter required data'
          : null;
      _passwordErrorText = _password2EditingController.text.isEmpty
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
