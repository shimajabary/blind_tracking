import 'package:flutter/material.dart';

class ProfileManageScreen extends StatefulWidget {
  const ProfileManageScreen({Key? key}) : super(key: key);

  @override
  _ProfileManageScreenState createState() => _ProfileManageScreenState();
}

class _ProfileManageScreenState extends State<ProfileManageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF989595),
          ),
        ),
        title: Text(
          'ادارة الحسابات',
          style: TextStyle(
              color: Color(0XFF134878),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.only(start: 24, end: 30, top: 67.4),
        children: [
          Card(
            margin: EdgeInsetsDirectional.only(bottom: 20),
            elevation: 5,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  bottom: 13, top: 13, start: 21, ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/signup_login.png'),

                ),
                title: Text('حسابي',style: TextStyle(
                  fontSize: 18
                ),),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                  color: Color(0XFF8D8A8A),
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
          ),
          Card(
            margin: EdgeInsetsDirectional.only(bottom: 20),
            elevation: 5,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 13, top: 13, start: 21, ),
              child: ListTile(
                leading: CircleAvatar(),
                title: Text('حسابي',style: TextStyle(
                    fontSize: 18
                ),),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                  color: Color(0XFF8D8A8A),
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
          ),
          Card(
            margin: EdgeInsetsDirectional.only(bottom: 20),
            elevation: 5,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 13, top: 13, start: 21, ),
              child: ListTile(
                leading: CircleAvatar(),
                title: Text('حسابي',style: TextStyle(
                    fontSize: 18
                ),),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                  color: Color(0XFF8D8A8A),
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
          ),
          Card(
            margin: EdgeInsetsDirectional.only(bottom: 20),
            elevation: 5,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 13, top: 13, start: 21, ),
              child: ListTile(
                leading: CircleAvatar(),
                title: Text('حسابي',style: TextStyle(
                    fontSize: 18
                ),),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                  color: Color(0XFF8D8A8A),
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
          ),
          Card(
            margin: EdgeInsetsDirectional.only(bottom: 20),
            elevation: 5,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 13, top: 13, start: 21, ),
              child: ListTile(
                leading: CircleAvatar(),
                title: Text('حسابي',style: TextStyle(
                    fontSize: 18
                ),),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                  color: Color(0XFF8D8A8A),
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
          ),
        ],
      ),
    );
  }
}
