import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes.gr.dart';

class Tab1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tab 1',
            ),
            TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(
                    TestRoute(),
                  );
                },
                child: Text("Naviger"))
          ],
        ),
      ),
    );
  }
}
