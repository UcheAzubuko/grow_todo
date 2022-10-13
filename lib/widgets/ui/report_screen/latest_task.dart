import 'package:flutter/material.dart';

class LatestTask extends StatelessWidget {
  const LatestTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(83, 98, 230, 0.81),
      ),
      margin: const EdgeInsets.symmetric(vertical: 34.0, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Mobile app design',
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
          ),
          const Text(
            'Anita and Mike',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        shape: BoxShape.circle),
                    child: CircleAvatar(
                      radius: 16.5,
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
                          border: Border.all(width: 2, color: Colors.white),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        radius: 16.5,
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
                'Now',
                style: TextStyle(fontSize: 13.5, color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
