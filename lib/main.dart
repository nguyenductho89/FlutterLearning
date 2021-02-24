import 'package:flutter_riverpod/all.dart';
import 'DomainLayer/DomainLayerApp.dart';
import 'FireCloud/fireCloudExample.dart';
import 'package:flutter/material.dart';
import 'InheritedWidget/HomeScreen.dart';
import 'InheritedWidget/StateContainer.dart';
import 'Navigator/NestedRouterDemo.dart';
import 'Provider/Cart/CartApp.dart';
import 'UnitTest/TestingApp.dart';

enum AppType { fireCloud, inheritedWidget, navigator, unitTest, provider, domainLayer }

var appType = AppType.domainLayer;

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
    case AppType.provider:
      runApp(CartApp());
      return;
    case AppType.domainLayer:
      runApp(ProviderScope(child: DomainLayerApp()));
      return;
  }
}