import 'package:blind_tracking_project/widget/customeTextfield.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          actions: [
        TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/signup_login_screen');
            },
            child: Text("تعديل",style: TextStyle(color: Colors.grey),) ,
          ),
      ],
          centerTitle: true,
          title: Text("الملف الشخصي",style: TextStyle( color: Color(0xff134878),),),
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
       body: 
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
           child: Column(
             children: [
               Stack(
                 children: [
                   CircleAvatar(
                     backgroundImage: AssetImage("images/1_view.png" ),
                     radius: 60,
                   ),
                Positioned(
                  top: 80,
                  child:    CircleAvatar(backgroundColor: Colors.green, radius: 10,))
                 ],
               ),
       SizedBox(height: 20,),
       Expanded(
        
         child: ListView(
        
         children: [
            CustomeTextfield("اسم المستخدم ", "سارة", TextInputType.text),
            SizedBox(height: 14,),
             CustomeTextfield("كلمة المرور الحالية ", "88888888", TextInputType.number,true ),
              SizedBox(height: 14,),
             
               
                CustomeTextfield("رقم الجوال  ", "٠٥٩٨٧٦٥٤٣", TextInputType.number),
                 SizedBox(height: 14,),
                 CustomeTextfield("الحنس  ", "انثي", TextInputType.text),
                  SizedBox(height: 14,),
                  CustomeTextfield("رقم الطوارى ١  ", "٠٩٨٨٧٧٧٧", TextInputType.number),
                   SizedBox(height: 14,),
                   CustomeTextfield("رقم الطوارى ٢  ", "٩٧٩٦٤٦", TextInputType.number),
                    SizedBox(height: 14,),
         ],
         ),
       )
             ],
           ),
         ),
       
       
    );
  }
}