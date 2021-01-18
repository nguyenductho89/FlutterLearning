import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'Favorites.dart';
import 'FavoritesPage.dart';
import 'HomePage.dart';
class TestingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: CupertinoApp(
        title: 'Testing Sample',
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        //   visualDensity: VisualDensity.adaptivePlatformDensity,
        // ),
        routes: {
          HomePage.routeName: (context) => HomePage(),
          FavoritesPage.routeName: (context) => FavoritesPage(),
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}