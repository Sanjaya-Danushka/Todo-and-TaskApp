import 'package:flutter/material.dart';
import 'package:todoapp/utils/constants.dart';
import 'package:todoapp/utils/text_style.dart';
import 'package:todoapp/widgets/notes_todo_card.dart';
import 'package:todoapp/widgets/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NoteSphere', style: AppTextStyle.appTitle)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ProgressCard(completedTasks: 1, totalTasks: 3),
            const SizedBox(height: AppConstants.kDefaultPadding * 1.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NotesTodoCard(
                  title: 'Notes',
                  description: '40 notes',
                  icon: Icons.bookmark_add_outlined,
                ),
                NotesTodoCard(
                  title: 'To-do list',
                  description: '100 todos',
                  icon: Icons.today_outlined,
                ),
              ],
            ),
            const SizedBox(height: AppConstants.kDefaultPadding * 1.5),
            Row(
              children: [
                Text('Today\'s Progress', style: AppTextStyle.subtitle),
                const Spacer(),
                Text('Sell All', style: AppTextStyle.descriptionLarge),
              ],
            ),
            const SizedBox(height: AppConstants.kDefaultPadding * 1.5),
            
          ],
        ),
      ),
    );
  }
}
