import 'FireCloud/fireCloudExample.dart';
import 'package:flutter/material.dart';
import 'InheritedWidget/HomeScreen.dart';
import 'InheritedWidget/StateContainer.dart';
import 'Navigator/NestedRouterDemo.dart';
import 'UnitTest/TestingApp.dart';

enum AppType { fireCloud, inheritedWidget, navigator, unitTest }

var appType = AppType.unitTest;

void main() {
  switch (appType) {
    case AppType.fireCloud:
      runApp(MyApp());
      return;
    case AppType.inheritedWidget:
      runApp(new StateContainer(child: new TodoApp()));
      return;
    case AppType.navigator:
      runApp(NestedRouterDemo());
      return;
    case AppType.unitTest:
      runApp(TestingApp());
      return;
  }
}
