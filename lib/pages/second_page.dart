import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String userId;

  const SecondPage({
    Key key,
    @required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(
          userId,
          style: Theme.of(context).textTheme.display2,
        ),
      ),
    );
  }
}
