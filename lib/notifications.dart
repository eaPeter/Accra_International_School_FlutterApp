import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/notifications.png',
            width: 300.55,
            height: 300,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'No notifications yet!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child: Text(
              'Retry later to check for any new notifications',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
