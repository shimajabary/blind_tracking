
import 'package:blind_tracking_project/widget/customeTextfield.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton =Container(
    padding: EdgeInsets.symmetric(vertical: 40),
    child:
Center(child:
 Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CircleAvatar(
    child: Icon(Icons.check , color: Colors.white,),
    backgroundColor: Colors.green,
    radius: 30,
   
  ),
  Text("تم حفظ التعديلات بنجاح ")
    ],
  )
  )
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          title: Text("الملف الشخصي",style: TextStyle( color: Color(0xff134878),),),
          backgroundColor: Colors.grey[100],
      automaticallyImplyLeading: false,
      actions: [
        TextButton(
            onPressed: () {
            showAlertDialog(context);
            },
            child: Text("حفظ",style: TextStyle(color: Colors.grey),) ,
          ),
      ],
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
                  child:    Icon(Icons.camera_alt ,size: 30,color: Colors.grey,),)
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
              CustomeTextfield("كلمة المرور الجديدة", "٣٤٣٤٣٤", TextInputType.number,true),
               SizedBox(height: 14,),
               CustomeTextfield("تآكيد كلمة المرور   ", "٩٩٧٩٩٩٧", TextInputType.number,true),
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