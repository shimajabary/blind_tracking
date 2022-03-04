import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<bool> _selections = [true, false];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.only(start: 29, end: 30, top: 39.4),
      children: [
        Card(
          elevation: 0,
          color: Color(0XFFF7F7F7),
          child: ListTile(
            title: Text(
              'ابحث في جهات الاتصال',
              style: TextStyle(color: Color(0XFF6C6B6B), fontSize: 16),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Color(0XFF134878),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 31,
        ),
        Center(
          child: ToggleButtons(
            borderRadius: BorderRadius.circular(8),
            fillColor: Color(0xff134878),
            selectedColor: Colors.white,
            color: Color(0xff6C6B6B),
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: 8, bottom: 16, end: 40, start: 32),
                child: Text(
                  'الكل',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    top: 8, bottom: 16, end: 25, start: 28),
                child: Text(
                  'الفائتة',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
            isSelected: _selections,
            onPressed: (int index) => _selections[index] = !_selections[index],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Card(
                margin: EdgeInsetsDirectional.only(bottom: 20),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(top: 12,bottom: 22,
                      start: 24,end: 25),
                  child: Row(
                    children: [
                      CircleAvatar(
                  backgroundImage: AssetImage(
                  'images/soha.png'),

                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Text(
                            'الاء عمر',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '22-1-2-2022',
                            style:
                                TextStyle(fontSize: 15, color: Color(0XFF8D8A8A)),
                          ),
                        ],
                      ),
                      SizedBox(width: 98,),

                      Column(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Color(0XFFB6E13D),
                          ),
                          SizedBox(height:  4,),
                          Text(
                            '02:45 AM',
                            style:
                                TextStyle(fontSize: 15, color: Color(0XFF8D8A8A)),
                          ),
                        ],
                      )
                    ],
                  ),
                )
                // ListTile(
                //   leading: CircleAvatar(
                //     child: Image.asset('images/soha.png'),
                //   ),
                //   title: Text('الاء عمر'),
                //   subtitle: Text('22-1-2-2022'),
                //   trailing:Icon(Icons.phone,
                //   color: Color(0XFFB6E13D),) ,
                // ),
                );
          },
          itemCount: 5,
        )
      ],
    );
  }
}
