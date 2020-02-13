import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final String username;
  final int points;

  const ThirdPage({
    Key key,
    @required this.username,
    @required this.points,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              username,
              style: Theme.of(context).textTheme.display2,
            ),
            Text(
              points.toString(),
              style: Theme.of(context).textTheme.display3,
            ),
          ],
        ),
      ),
    );
  }
}
