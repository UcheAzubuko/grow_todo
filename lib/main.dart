import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../../widgets/layout/bottom_navbar.dart';
import '../../widgets/ui/report_screen/ongoing_tasks/ongoing_tasks.dart';
import './screens/home_screen.dart';
import './screens/notification.dart';
import './screens/profile_screen.dart';
import './screens/report.dart';
import './screens/getting_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grow Todo',
      theme: ThemeData(
          textTheme: ThemeData.light().textTheme.copyWith(
              displayLarge: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
              displayMedium: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              bodyMedium: const TextStyle(fontSize: 18),
              bodySmall: const TextStyle(fontSize: 13)),
          fontFamily: 'Poppins'),
      initialRoute: '/',
      routes: {
        '/': (context) => const GettingStarted(),
        BottomNavbar.routeName: (context) => const BottomNavbar(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        ReportScreen.routeName: (context) => const ReportScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        NotificationScreen.routeName: (context) => const NotificationScreen(),
        OngoingTasks.routeName: (context) => const OngoingTasks(),
      },
    );
  }
}
