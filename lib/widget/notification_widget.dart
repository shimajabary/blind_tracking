import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 150,
      child: Card(
          margin: EdgeInsets.only(bottom: 20 ,left: 5 ,right: 5),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20 ,horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                 
                 child: CircleAvatar(backgroundImage: AssetImage("images/profile.png" ,),radius: 30,)),
                 SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("بصيرتي",style:TextStyle( color: Color(0xff134878),fontWeight: FontWeight.w600),),
                  Text("مرحبا آحمد تواجه سارة مشكلة في الوصول")
                ],),
               
                 
                 Text("22/22/22"),
              ],
            
        ),
          ),
      ),
    );
  }
}