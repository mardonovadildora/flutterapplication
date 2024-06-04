import 'package:flutter/material.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: 56, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sing in',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
