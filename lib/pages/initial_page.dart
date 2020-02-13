import 'package:flutter/material.dart';
import 'package:flutter_auto_route/routes/router.gr.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Go to Second'),
              onPressed: () => navigateToSecond(context),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              child: Text('Go to Third'),
              onPressed: () => navigateToThird(context),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToSecond(BuildContext context) {
    Router.navigator.pushNamed(
      Router.secondPage,
      arguments: SecondPageArguments(userId: 'some_user_id'),
    );
  }

  void navigateToThird(BuildContext context) {
    Router.navigator.pushNamed(
      Router.thirdPage,
      arguments: ThirdPageArguments(
        username: 'bob',
        points: 123,
      ),
    );
  }
}
