import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/transitions_builders.dart';
import 'package:flutter_auto_route/pages/initial_page.dart';
import 'package:flutter_auto_route/pages/second_page.dart';
import 'package:flutter_auto_route/pages/third_page.dart';

@autoRouter
class $Router {
  @initial
  InitialPage initialPage;
  @MaterialRoute(fullscreenDialog: true)
  SecondPage secondPage;
  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.zoomIn,
    durationInMilliseconds: 200,
  )
  ThirdPage thirdPage;
}
