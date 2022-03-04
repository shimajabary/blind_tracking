import 'package:blind_tracking_project/models/gender.dart';
import 'package:flutter/material.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({Key? key}) : super(key: key);

  @override
  _AddUserScreenState createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  String? _selectedCityID;

  final List<Gender> _cities = <Gender>[
    Gender(id: 1, name: 'انثى'),
    Gender(
      id: 2,
      name: 'ذكر',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.only(
          start: 37, end: 38,top: 44),
      children: [
        Center(
          child: Stack(
            // alignment: Alignment.center,
            children: [
              Center(child: Image.asset('images/profile.png')),
              IconButton(
                onPressed: () {

                },
                icon: Positioned(
                  top: 173.9,
                  right: 142,
                  left: 250,
                  bottom: 0,
                  child: Icon(Icons.camera_alt_rounded,
                  color: Color(0xff134878),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 42,
        ),
        Text(
          'اسم المستخدم',
          style: TextStyle(fontSize: 16, color: Color(0XFF6C6B6B)),
        ),
        SizedBox(
          height: 14,
        ),
        TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black45,
            ),
            decoration: InputDecoration(
              // hintText: 'رشا كحيل',
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
          height: 19,
        ),
        Text('كلمة السر',
            style: TextStyle(fontSize: 16, color: Color(0XFF6C6B6B))),
        SizedBox(
          height: 14,
        ),
        TextField(
            obscureText: true,
            keyboardType:
                TextInputType.numberWithOptions(decimal: false, signed: false),
            style: TextStyle(
              color: Colors.black45,
            ),
            decoration: InputDecoration(
              // hintText: '*********',
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
          height: 19,
        ),
        Text('رقم الجوال',
            style: TextStyle(fontSize: 16, color: Color(0XFF6C6B6B))),
        SizedBox(
          height: 14,
        ),
        TextField(
            obscureText: true,
            keyboardType:
                TextInputType.numberWithOptions(decimal: false, signed: false),
            style: TextStyle(
              color: Colors.black45,
            ),
            decoration: InputDecoration(
              // hintText: '******',
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
          height: 19,
        ),
        Text('الجنس', style: TextStyle(fontSize: 16, color: Color(0XFF6C6B6B))),
        SizedBox(
          height: 14,
        ),
        TextField(
          style: TextStyle(
            color: Colors.black45,
          ),
          decoration: InputDecoration(
              hintText: 'انثى',
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
              suffixIcon: DropdownButton<String>(
                isExpanded: true,
                value: _selectedCityID,
                // hint: Text('نوع الجنس'),
                items: _cities
                    .map((Gender gender) => DropdownMenuItem<String>(
                          child: Text(gender.name),
                          value: gender.id.toString(),
                        ))
                    .toList(),
                onChanged: (String? value) {
                  if (value != null) {
                    setState(() {
                      _selectedCityID = value;
                    });
                  }
                },
              )),
        ),
        SizedBox(
          height: 19,
        ),
        Text('رقم الطوارىء1',
            style: TextStyle(fontSize: 16, color: Color(0XFF6C6B6B))),
        SizedBox(
          height: 14,
        ),
        TextField(
            keyboardType:
                TextInputType.numberWithOptions(decimal: false, signed: false),
            style: TextStyle(
              color: Colors.black45,
            ),
            decoration: InputDecoration(
              // hintText: '0592206106',
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
          height: 19,
        ),
        Text('رقم الطوارىء2',
            style: TextStyle(fontSize: 16, color: Color(0XFF6C6B6B))),
        SizedBox(
          height: 14,
        ),
        TextField(
            keyboardType:
                TextInputType.numberWithOptions(decimal: false, signed: false),
            style: TextStyle(
              color: Colors.black45,
            ),
            decoration: InputDecoration(
              // hintText: '0592206106',
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
        SizedBox(height: 42,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff134878),
            minimumSize: Size(241, 59),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.all(
                Radius.circular(10),
              ),
            ),
          ),
          onPressed: () {
            _showLogOutConfirmDialog();
          },
          child: Text('اضافة'),
        ),
        SizedBox(height: 82,),
      ],
    );
  }
  void _showLogOutConfirmDialog(){

    showDialog(context: context,
        // barrierDismissible: false,
        builder: (context) {
          return Padding(
            padding: EdgeInsetsDirectional.only(
                start: 98,end: 92,bottom: 88,top: 40),
            child: AlertDialog(

               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20)
               ),
              title:Icon(Icons.check_circle,
              color: Color(0XFFA2C900),
              size: 67,),
              content: Text('تمت العملية بنجاح ',style:
                TextStyle(fontSize: 20),),

            ),
          );
        },);
  }
}
