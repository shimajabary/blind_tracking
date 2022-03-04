import 'package:blind_tracking_project/widget/notification_widget.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          title: Text("الاشعارات",style: TextStyle( color: Color(0xff134878),),),
          backgroundColor: Colors.grey[100],
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
       body: SafeArea(child: 
       Container(
         margin: EdgeInsets.symmetric(vertical: 30 ,),
         child: ListView.builder(
           itemCount:  5,
           itemBuilder: (context , x) {
           return  NotificationWidget();
         }),
       )
       ),
    );
  }
}