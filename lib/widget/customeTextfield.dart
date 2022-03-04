
import 'package:flutter/material.dart';

class CustomeTextfield extends StatelessWidget {
  late String label  ; 
  late String hint ;
  TextInputType type ;
  bool security ;
 CustomeTextfield(this.hint ,this.label ,this.type ,[this.security = false]);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(hint ,style: TextStyle(color: Colors.blue.shade700,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),),
        TextField(
                keyboardType: type,
                style: TextStyle(
                  color: Colors.black45,
                ),
                decoration: InputDecoration(  
                  hintText: label,
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
                
      ],)
    );
  }
}