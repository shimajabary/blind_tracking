import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.only(start: 19,end: 30),
      children: [
        SizedBox(height: 20,),
        Text('مرحبا بك في بصيرتي', style: TextStyle(
            fontSize: 20,
            color: Color(0XFF134878)
        ),),
        SizedBox(height: 6,),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 16),
          child: Text('كن من صناع الامل', style: TextStyle(
              fontSize: 18,
              color: Color(0XFFB6E13D)
          ),),
        ),
        SizedBox(height: 30,),
        Row(
          children: [
            Text('المكفولين', style: TextStyle(
                fontSize: 20,
                color: Color(0XFF134878)
            ),
            ),
            SizedBox(width: 239,),
            IconButton(onPressed: () {
              PopupMenuButton<String>(onSelected: (value) {
              },
                  itemBuilder: (context) {

                    return [
                      //لو شلت النوع رح يعطيني ايرور
                      PopupMenuItem(
                        child: Text('الكل'),
                        value: 'الكل',
                        height: 30,
                      ),
                      PopupMenuDivider(),
                      PopupMenuItem(
                        child: Text('متصل الان'),
                        value: 'متصل الان',
                        height: 30,
                      ),
                      PopupMenuDivider(),
                      PopupMenuItem(
                        child: Text('نشط الان'),
                        value: 'نشط الان',
                        height: 30,
                      ),
                    ];
                  });
            }, icon: Icon(Icons.add_road_outlined,
              color: Color(0XFFB2B2B2),))
          ],
        ),
        SizedBox(height: 24,),
        ListView.builder(

          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.pushReplacementNamed(context, '/trips_screen');

            },
            child: Card(

              margin: EdgeInsetsDirectional.only(bottom: 25),
              elevation: 5,
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 19,end:21 ,bottom: 11,top: 12),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/soha.png'),

                      radius: 30.5,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(width:  23,),
                    Column(children: [
                      Text('الاء عمر', style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFF050505),
                          fontWeight: FontWeight.bold
                      )),
                      Text('متصل الان', style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFFB6E13D),
                        fontWeight: FontWeight.bold
                      ),),
                    ],),
                    SizedBox(width: 100,),

                    Text('نشط الان', style: TextStyle(
                        fontSize: 16,
                        color: Color(0XFF134878),
                        fontWeight: FontWeight.bold
                    )),
                  ],
                ),
              ),

            ),
          );
        },
          itemCount: 5,)
      ],
    );
  }
}
