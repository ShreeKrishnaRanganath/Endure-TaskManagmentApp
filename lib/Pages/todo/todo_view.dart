import 'package:endure/Pages/todo/todo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class todoview extends StatefulWidget {
  const todoview({Key? key}) : super(key: key);

  @override
  State<todoview> createState() => _todoviewState();
}

class _todoviewState extends State<todoview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6FBF4),
        body: Padding(
          padding: EdgeInsets.only(bottom: 75.0),
          child: todoui(),
        ));
  }
}
