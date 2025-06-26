import 'package:flutter/material.dart';
import 'package:todoapp/utils/colors.dart';
import 'package:todoapp/utils/constants.dart';
import 'package:todoapp/utils/text_style.dart';

class NotesTodoCard extends StatefulWidget {
  final String title;
  final String description;
  final IconData icon;
  const NotesTodoCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  State<NotesTodoCard> createState() => _NotesTodoCardState();
}

class _NotesTodoCardState extends State<NotesTodoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      padding: const EdgeInsets.all(AppConstants.kDefaultPadding),
      decoration: BoxDecoration(
        color: AppColors.kcardColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.kbgColor,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(widget.icon, size: 40, color: AppColors.kwhiteColor),
            Text(
              widget.title,
              style: AppTextStyle.descriptionLarge.copyWith(
                color: AppColors.kwhiteColor,
              ),
            ),
            Text(
              widget.description,
              style: AppTextStyle.descriptionSmall.copyWith(
                color: AppColors.kwhiteColor.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
