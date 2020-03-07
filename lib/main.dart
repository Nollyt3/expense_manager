import 'package:expense_manager/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager/db/migrations/offline_db_provider.dart';

void main() {
  OfflineDbProvider.provider.initDB();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}