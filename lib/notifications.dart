import 'package:accra_app/home.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        leading: Container(
          width: 45,
          height: 45,
          padding: const EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(45.0)),
          child: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_left,
              size: 72.0,
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
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
      ),
    );
  }
}
