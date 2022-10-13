import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OngoingTasks extends StatefulWidget {
  static const routeName = '/ongoing-tasks';

  const OngoingTasks({Key? key}) : super(key: key);

  @override
  State<OngoingTasks> createState() => _OngoingTasksState();
}

class _OngoingTasksState extends State<OngoingTasks> {
  DateFormat date = DateFormat('d MMM');

  @override
  Widget build(BuildContext context) {
    final mediaQueryObject = MediaQuery.of(context);

    final appBar = AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      title: null,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                shape: BoxShape.circle),
            child: CircleAvatar(
              radius: 15,
              child: Image.asset(
                'assets/images/avatar.png',
                fit: BoxFit.scaleDown,
                width: double.infinity,
              ),
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(218, 235, 250, 1),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: (mediaQueryObject.size.height -
                          appBar.preferredSize.height -
                          mediaQueryObject.padding.top) *
                      0.2,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          date.format(DateTime.now()),
                          style: const TextStyle(fontSize: 32),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Ongoing',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: (mediaQueryObject.size.height -
                          appBar.preferredSize.height -
                          mediaQueryObject.padding.top) *
                      0.8,
                  child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 30.0, horizontal: 0),
                              child: const Center(
                                  child: Text('There are no todos left')));
                        } else {
                          return Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Start',
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        'End',
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  )),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: const EdgeInsets.all(11),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromRGBO(73, 82, 214, 1),
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 34.0, horizontal: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const Text(
                                        'Mobile app design',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            color: Colors.white),
                                      ),
                                      const Text(
                                        'Anita and Mike',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white),
                                                    shape: BoxShape.circle),
                                                child: CircleAvatar(
                                                  radius: 13,
                                                  child: Image.asset(
                                                    'assets/images/Mike.png',
                                                    fit: BoxFit.scaleDown,
                                                    width: double.infinity,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                left: 23,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 1,
                                                          color: Colors.white),
                                                      shape: BoxShape.circle),
                                                  child: CircleAvatar(
                                                    radius: 13,
                                                    child: Image.asset(
                                                      'assets/images/Anita.png',
                                                      fit: BoxFit.scaleDown,
                                                      width: double.infinity,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Text(
                                            'Now - Then',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
