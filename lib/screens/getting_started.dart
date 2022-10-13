import 'package:flutter/material.dart';

import '../widgets/layout/bottom_navbar.dart';

class GettingStarted extends StatelessWidget {
  static const routeName = '/getting-started';

  const GettingStarted({Key? key}) : super(key: key);

  void _getStarted(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(BottomNavbar.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 46.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 389,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.scaleDown,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('Manage your daily tasks',
                  style: Theme.of(context).textTheme.displayLarge),
              Text('Team and Project management with solution providing App',
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(
                height: 25.0,
              ),
              SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () => _getStarted(context),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 71,
                          height: 71,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 1.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 25,
                                  offset: const Offset(1, 2),
                                ),
                              ],
                              shape: BoxShape.circle),
                        ),
                        const Positioned(
                          bottom: 25,
                          left: 30,
                          child: Text(
                            'Get Started',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
