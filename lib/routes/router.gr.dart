// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:flutter_auto_route/pages/initial_page.dart';
import 'package:flutter_auto_route/pages/second_page.dart';
import 'package:flutter_auto_route/pages/third_page.dart';
import 'package:auto_route/transitions_builders.dart';

class Router {
  static const initialPage = '/';
  static const secondPage = '/second-page';
  static const thirdPage = '/third-page';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<Router>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.initialPage:
        return MaterialPageRoute(
          builder: (_) => InitialPage(),
          settings: settings,
        );
      case Router.secondPage:
        if (hasInvalidArgs<SecondPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<SecondPageArguments>(args);
        }
        final typedArgs = args as SecondPageArguments;
        return MaterialPageRoute(
          builder: (_) =>
              SecondPage(key: typedArgs.key, userId: typedArgs.userId),
          settings: settings,
          fullscreenDialog: true,
        );
      case Router.thirdPage:
        if (hasInvalidArgs<ThirdPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ThirdPageArguments>(args);
        }
        final typedArgs = args as ThirdPageArguments;
        return PageRouteBuilder(
          pageBuilder: (ctx, animation, secondaryAnimation) => ThirdPage(
              key: typedArgs.key,
              username: typedArgs.username,
              points: typedArgs.points),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          transitionDuration: Duration(milliseconds: 200),
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//SecondPage arguments holder class
class SecondPageArguments {
  final Key key;
  final String userId;
  SecondPageArguments({this.key, @required this.userId});
}

//ThirdPage arguments holder class
class ThirdPageArguments {
  final Key key;
  final String username;
  final int points;
  ThirdPageArguments(
      {this.key, @required this.username, @required this.points});
}
