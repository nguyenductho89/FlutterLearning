import 'FireCloud/fireCloudExample.dart';
import 'package:flutter/material.dart';
import 'InheritedWidget/HomeScreen.dart';
import 'InheritedWidget/StateContainer.dart';

enum AppType { fireCloud, inheritedWidget }

var appType = AppType.fireCloud;

void main() {
  switch (appType) {
    case AppType.fireCloud:
      runApp(MyApp());
      return;
    case AppType.inheritedWidget:
      runApp(new StateContainer(child: new TodoApp()));
      return;
  }
}
