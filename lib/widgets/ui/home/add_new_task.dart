import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddNewTask extends StatefulWidget {
  const AddNewTask({Key? key}) : super(key: key);

  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {
  String taskName = "";
  TimeOfDay? taskStartTime;
  TimeOfDay? taskEndTime;
  DateTime? taskDate;
  TextEditingController dateController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();

  DateFormat dateFormat = DateFormat('dd MMM,yyyy');

  void _datePicker() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2050),
    );
    setState(() {
      taskDate = date!;
    });
    dateController.text = dateFormat.format(date!);
  }

  void _startTimePicker() async {
    TimeOfDay? newTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (newTime != null) {
      setState(() {
        taskStartTime = newTime;
        print(newTime);
      });
      startTimeController.text = newTime.format(context);
    }
  }

  void _endTimePicker() async {
    TimeOfDay? newTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (newTime != null) {
      setState(() {
        taskStartTime = newTime;
      });
      endTimeController.text = newTime.format(context);
    }
  }

  void _addNewTask() {
    if (dateController.text.isEmpty ||
        startTimeController.text.isEmpty ||
        endTimeController.text.isEmpty ||
        taskName == "") {
      return;
    }
  }

  @override
  void initState() {
    dateController.text = "";
    startTimeController.text = "";
    endTimeController.text = "";
    super.initState();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(218, 235, 250, 1),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Create new task',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    onChanged: (value) {
                      taskName = value;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Task name',
                      labelStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(73, 82, 214, 1),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    onTap: _datePicker,
                    controller: dateController,
                    decoration: const InputDecoration(
                      labelText: 'Task date',
                      labelStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(73, 82, 214, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    onTap: _startTimePicker,
                    controller: startTimeController,
                    decoration: const InputDecoration(
                      labelText: 'Task start time',
                      labelStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(73, 82, 214, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    onTap: _endTimePicker,
                    controller: endTimeController,
                    decoration: const InputDecoration(
                      labelText: 'Task end time',
                      labelStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(73, 82, 214, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FlatButton(
                    onPressed: () => _addNewTask(),
                    padding: EdgeInsets.zero,
                    child: Container(
                      height: 60,
                      width: double.infinity - 30,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(73, 82, 214, 1),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: const Center(
                        child: Text(
                          'Add task',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
