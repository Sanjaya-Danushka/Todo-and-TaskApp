import 'package:flutter/material.dart';
import 'package:todoapp/utils/colors.dart';
import 'package:todoapp/utils/constants.dart';
import 'package:todoapp/utils/text_style.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(color: AppColors.kwhiteColor, width: 2),
        ),
        child: Icon(Icons.add, color: AppColors.kwhiteColor, size: 30),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.kDefaultPadding),
        child: Column(
          children: [
            Text('Notes', style: AppTextStyle.appTitle),
            const SizedBox(height: AppConstants.kDefaultPadding * 1.5),
          ],
        ),
      ),
    );
  }
}
