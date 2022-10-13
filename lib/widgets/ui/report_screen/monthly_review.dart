import 'package:flutter/material.dart';

import '../../../widgets/ui/report_screen/ongoing_tasks/ongoing_tasks.dart';

class MonthlyReview extends StatelessWidget {
  const MonthlyReview({Key? key}) : super(key: key);

  Widget monthlyReviewCard(String count, String title, double height) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            count,
            style: const TextStyle(fontSize: 30),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }

  void _viewOngoingTasks(BuildContext context) {
    Navigator.of(context).pushNamed(OngoingTasks.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'Monthly Review',
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
            Container(
              height: 33,
              width: 33,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(39, 195, 229, 1)),
              child: const Icon(
                Icons.calendar_today_rounded,
                color: Colors.white,
                size: 16,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    InkWell(
                        borderRadius: BorderRadius.circular(15),
                        child: monthlyReviewCard('22', 'Done', 152)),
                    const SizedBox(
                      height: 13,
                    ),
                    InkWell(
                      onTap: () => _viewOngoingTasks(context),
                      borderRadius: BorderRadius.circular(15),
                      child: monthlyReviewCard('10', 'Ongoing', 104),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 38,
              ),
              Expanded(
                  child: Column(
                children: [
                  InkWell(
                      borderRadius: BorderRadius.circular(15),
                      child: monthlyReviewCard('7', 'In progress', 104)),
                  const SizedBox(
                    height: 13,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(15),
                    child: monthlyReviewCard('12', 'Waiting for review', 152),
                  ),
                ],
              )),
            ],
          ),
        ),
      ],
    );
  }
}
