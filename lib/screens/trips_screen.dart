import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripsScreen extends StatefulWidget {
  const TripsScreen({Key? key}) : super(key: key);

  @override
  _TripsScreenState createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home_screen');

          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF989595),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Color(0XFF6C6B6B),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.only(
            start: 23, end: 24),
        children: [
          // SizedBox(
          //   height: 9.4,
          // ),
          Container(
            // height: 162,
            // width: 50,
            child: Image.asset('images/1_view.png'),
            // color: Colors.grey,
          ),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 165),
            child: Row(
              children: [
                Column(
                  children: [
                    Text('الاء عمر',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0XFF134878),
                            fontWeight: FontWeight.bold)),
                    Text(
                      'متصل الان',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFFB6E13D),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 49,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  color: Color(0XFFFBFBFB),
                  elevation: 7,
                  child: IconButton(
                    icon: Icon(
                      Icons.phone,
                      color: Color(0XFF134878),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 33,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'الرحلات',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_road_outlined,
                      color: Color(0XFFB2B2B2),
                    )),
              ],
            ),
          ),
          SizedBox(height: 28,),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                  margin: EdgeInsetsDirectional.only(bottom: 25),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 35.9, top: 17, end: 23, bottom: 18),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on_sharp,
                            color:Color(0XFFB6E13D) ,),
                            Text('غزة-رمال-شارع الوحدة',style:
                              TextStyle(fontSize: 16,
                              color: Color(0XFF585858)),),
                            SizedBox(width: 83,),
                            Text('نشط الان', style: TextStyle(
                                fontSize: 16,
                                color: Color(0XFF134878),
                                fontWeight: FontWeight.bold
                            )),
                          ],
                        ),
                        SizedBox(height: 13.9,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_sharp,
                              color:Color(0XFFB6E13D) ,),
                            Text('غزة-رمال-كابيتال مول',style:
                            TextStyle(fontSize: 16,
                                color: Color(0XFF585858)),),
                            SizedBox(width: 83,),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.calendar_today_outlined,
                              color:Color(0XFFB6E13D) ,),
                            Text(' 22-2-2022',style:
                            TextStyle(fontSize: 16,
                                color: Color(0XFF585858)),),
                            SizedBox(width: 32,),
                            Icon(Icons.access_time,
                              color:Color(0XFFB6E13D) ,),
                            Text(' 02:35 PM',style:
                            TextStyle(fontSize: 16,
                                color: Color(0XFF585858)),),
                          ],
                        )
                      ],
                    ),
                  ));
            },
            itemCount: 5,
          )
        ],
      ),
    );
  }
}
