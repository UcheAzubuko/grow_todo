import 'package:flutter/material.dart';

import '../../widgets/ui/report_screen/latest_task.dart';
import '../../widgets/ui/report_screen/monthly_review.dart';

class ReportScreen extends StatelessWidget {
  static const routeName = '/report';

  const ReportScreen({Key? key}) : super(key: key);

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text(
                'Hi Shalom',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                    color: Colors.white),
              ),
              Text(
                '6 tasks are pending',
                style: TextStyle(color: Colors.white),
              ),
              LatestTask(),
              MonthlyReview(),
            ],
          ),
        ),
      ),
    );
  }
}
