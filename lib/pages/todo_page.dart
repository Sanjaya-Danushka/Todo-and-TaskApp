import 'package:flutter/material.dart';
import 'package:todoapp/utils/text_style.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To-do page', style: AppTextStyle.appTitle)),
    );
  }
}