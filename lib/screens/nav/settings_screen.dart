import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.only(start: 27, end: 27, top: 50.4),
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withAlpha(41),
                    offset: Offset(0, 3),
                    blurRadius: 6)
              ]),
          child: ListTile(
            leading: Icon(
              Icons.person_outline,
              color: Color(0xff8D8A8A),
            ),
            title: Text(
              'ادارة الحسابات',
              style: TextStyle(color: Color(0XFF134878), fontSize: 18),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 24,
              color: Color(0XFFB2B2B2),
            ),
            onTap: () {
              Navigator.pop(context);
              Future.delayed(
                  Duration(
                    milliseconds: 700,
                  ), () {
                //the pushnamed put the launch screen in the stack then put azcar screen in stack when azcar finish run it call
                //back the launch screen from stack
                //رح تلاحظ بعد تنفيذ هادي العملية رجع رجعني عال lunch screen بسبب انه بشكل مبدئي بيحط زر الرجوع بالappbar
                Navigator.pushNamed(context, '/profile_manage_screen');
              });
            },
          ),
        ),
        Container(
          margin: EdgeInsetsDirectional.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withAlpha(41),
                    offset: Offset(0, 3),
                    blurRadius: 6)
              ]),
          child: ListTile(
            leading: Icon(
              Icons.lock_outline,
              color: Color(0xff8D8A8A),
            ),
            title: Text(
              'سياسة الخصوصية',
              style: TextStyle(color: Color(0XFF134878), fontSize: 18),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 24,
              color: Color(0XFFB2B2B2),
            ),
            onTap: () {
              Navigator.pop(context);
              Future.delayed(
                  Duration(
                    milliseconds: 700,
                  ), () {
                //the pushnamed put the launch screen in the stack then put azcar screen in stack when azcar finish run it call
                //back the launch screen from stack
                //رح تلاحظ بعد تنفيذ هادي العملية رجع رجعني عال lunch screen بسبب انه بشكل مبدئي بيحط زر الرجوع بالappbar
                Navigator.pushNamed(context, '/profile_manage_screen');
              });
            },
          ),
        ),
        Container(
          margin: EdgeInsetsDirectional.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withAlpha(41),
                    offset: Offset(0, 3),
                    blurRadius: 6)
              ]),
          child: ListTile(
            leading: Icon(
              Icons.announcement_outlined,
              color: Color(0xff8D8A8A),
            ),
            title: Text(
              'من نحن',
              style: TextStyle(color: Color(0XFF134878), fontSize: 18),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 24,
              color: Color(0XFFB2B2B2),
            ),
            onTap: () {
              Navigator.pop(context);
              // Future.delayed(
              //     Duration(
              //       milliseconds: 700,
              //     ), () {
              //   //the pushnamed put the launch screen in the stack then put azcar screen in stack when azcar finish run it call
              //   //back the launch screen from stack
              //   //رح تلاحظ بعد تنفيذ هادي العملية رجع رجعني عال lunch screen بسبب انه بشكل مبدئي بيحط زر الرجوع بالappbar
              //   Navigator.pushNamed(context, '/fags_screen');
              // });
            },
          ),
        ),
        Container(
          margin: EdgeInsetsDirectional.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withAlpha(41),
                    offset: Offset(0, 3),
                    blurRadius: 6)
              ]),
          child: ListTile(
            leading: Icon(
              Icons.logout,
              color: Color(0xff8D8A8A),
            ),
            title: Text(
              'تسجيل خروج',
              style: TextStyle(color: Color(0XFF134878), fontSize: 18),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 24,
              color: Color(0XFFB2B2B2),
            ),
            onTap: () {
              Navigator.pop(context);
              // Future.delayed(
              //     Duration(
              //       milliseconds: 700,
              //     ), () {
              //   //the pushnamed put the launch screen in the stack then put azcar screen in stack when azcar finish run it call
              //   //back the launch screen from stack
              //   //رح تلاحظ بعد تنفيذ هادي العملية رجع رجعني عال lunch screen بسبب انه بشكل مبدئي بيحط زر الرجوع بالappbar
              //   Navigator.pushNamed(context, '/fags_screen');
              // });
            },
          ),
        )
      ],
    );
  }
}
