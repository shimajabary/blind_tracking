import 'package:blind_tracking_project/models/bn_item.dart';
import 'package:blind_tracking_project/screens/nav/add_user_screen.dart';
import 'package:blind_tracking_project/screens/nav/contact_screen.dart';
import 'package:blind_tracking_project/screens/nav/profile_manage_screen.dart';
import 'package:blind_tracking_project/screens/nav/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'nav/home_screen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<BnItem> _btItem = <BnItem>[
    const BnItem(title: 'الرئيسية', widget: HomeScreen()),
    const BnItem(title: 'اضافة مكفول', widget: AddUserScreen()),
    const BnItem(title: 'جهات الاتصال', widget: ContactScreen()),
    const BnItem(title: 'الاعدادات', widget: SettingsScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, '/login_screen');

          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0XFF989595),
          ),
        ),
        title:
        Text(_btItem[_currentIndex].title,style: TextStyle(
          color: Color(0XFF134878),
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: _btItem[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(
              Icons.home_outlined,
              size: 18,
            ), //1
            activeIcon: Icon(Icons.home),
            label: '', //empty =' '
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.add_outlined),
            activeIcon: Icon(Icons.add),
            label: '', //empty =' '
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.person_outlined),
            activeIcon: Icon(Icons.person),
            label: '', //empty =' '
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: '', //empty =' '
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },

        showSelectedLabels: false,
        showUnselectedLabels: false,
        //////////////////////////////
        //if the number of elements exceeds 3  then convert to type: BottomNavigationBarType.shifting
        //type: BottomNavigationBarType.fixed,
        //         showSelectedLabels: false,
        // showUnselectedLabels: false,
        ///////////////////////////////////
        //both can not come with each other
        // fixedColor: Colors.orange,
        // unselectedItemColor: Colors.red,
        ////////////////////////////////////
        //no effected happen to the text
        selectedLabelStyle: TextStyle(color: Colors.black45),
        //sol
        selectedItemColor: Colors.black45,
        selectedIconTheme: IconThemeData(color: Color(0xffB6E13D)),
        /////////////////////////////////////////////////////
        unselectedItemColor: Colors.black45,
        //for both icon and text
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 24),
        //2
        //////////////////////////////////////////////////////
        //no effected happen to the text
        unselectedLabelStyle: TextStyle(color: Colors.black45),
        ///////////////////////////////////////////////////////
        // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,letterSpacing:2,fontSize: 14 ),
        // unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0,fontSize: 12),
        iconSize: 24,

        backgroundColor: Color(0xff134878),
        elevation: 5,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
