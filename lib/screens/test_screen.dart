import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test page"),
        leading: BackButton(),
      ),
      body: Center(
        child: Text("Test!"),
      ),
    );
  }
}
