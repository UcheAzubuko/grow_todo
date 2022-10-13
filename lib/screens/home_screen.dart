import 'package:flutter/material.dart';

import '../../../widgets/ui/home/add_new_task.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _startAddNewTodo(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AddNewTask();
    }));
  }

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
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Center(
                child: TextButton(
              onPressed: () => _startAddNewTodo(context),
              style: TextButton.styleFrom(
                primary: Colors.white,
                elevation: 2,
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 30.0),
              ),
              child: const Text('Add new task'),
            ))),
      ),
    );
  }
}
