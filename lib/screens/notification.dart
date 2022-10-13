import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = '/notification';

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(65, 70, 194, 0.81),
          Color.fromRGBO(57, 34, 152, 1)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Center(
                child: Text(
              'Notification screen',
              style: TextStyle(color: Colors.white),
            ))),
      ),
    );
  }
}
