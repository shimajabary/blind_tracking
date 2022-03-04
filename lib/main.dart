import 'package:blind_tracking_project/screens/editprofile_screen.dart';
import 'package:blind_tracking_project/screens/forget_password_screen.dart';
import 'package:blind_tracking_project/screens/launch_screen.dart';
import 'package:blind_tracking_project/screens/login_screen.dart';
import 'package:blind_tracking_project/screens/main_screen.dart';
import 'package:blind_tracking_project/screens/nav/add_user_screen.dart';
import 'package:blind_tracking_project/screens/nav/contact_screen.dart';
import 'package:blind_tracking_project/screens/nav/home_screen.dart';
import 'package:blind_tracking_project/screens/nav/profile_manage_screen.dart';
import 'package:blind_tracking_project/screens/nav/settings_screen.dart';
import 'package:blind_tracking_project/screens/notification_screen.dart';
import 'package:blind_tracking_project/screens/reset_password_screen.dart';
import 'package:blind_tracking_project/screens/sign_up_screen.dart';
import 'package:blind_tracking_project/screens/signup_login_screen.dart';
import 'package:blind_tracking_project/screens/trips_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [Locale('ar'), Locale('en')],
      locale: Locale('ar'),
      initialRoute: '/editprofile',
      //عوضا عن الهوم
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/signup_login_screen': (context) => const SignUpLoginScreen(),
        '/sign_up_screen': (context) => const SignUpScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/forget_password_screen': (context) => const ForgetPasswordScreen(),
        '/main_screen': (context) => const MainScreen(),
        '/reset_password_screen': (context) => const ResetPasswordScreen(),
        '/add_user_screen': (context) => const AddUserScreen(),
        '/contact_screen': (context) => const ContactScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/profile_manage_screen': (context) => const ProfileManageScreen(),
        '/trips_screen': (context) => const TripsScreen(),
        '/settings_screen': (context) => const SettingsScreen(),
         '/notification': (context) =>  NotificationScreen(),
          '/editprofile': (context) =>  EditProfile(),
           '/editprofile': (context) =>  EditProfile(),
        // '/settings_screen': (context) => const SettingsScreen(),
      });
  }

}
