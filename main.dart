import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app2/page/home_page.dart';
import 'package:todolist_app2/provider/todos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = "Todo App";

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Color(0xFFedf6f9),
          ),
          home: HomePage(),
        ),
      );
}
