import 'package:flutter/material.dart';
import 'package:mpc_app/features/cells/list/cells_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: CellsListScreen(),
    );
  }
}
