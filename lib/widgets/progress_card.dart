import 'package:flutter/material.dart';
import 'package:todoapp/utils/colors.dart';
import 'package:todoapp/utils/constants.dart';
import 'package:todoapp/utils/text_style.dart';

class ProgressCard extends StatefulWidget {
  final int completedTasks;
  final int totalTasks;
  const ProgressCard({
    super.key,
    required this.completedTasks,
    required this.totalTasks,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    double progress = widget.completedTasks / widget.totalTasks;
    return Container(
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
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today\'s Progress', style: AppTextStyle.subtitle),
              const SizedBox(height: 8),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  'You have completed ${widget.completedTasks} out of ${widget.totalTasks} tasks,\n keep up  the progress!',
                  style: AppTextStyle.descriptionSmall.copyWith(
                    color: AppColors.kwhiteColor.withValues(alpha: 0.5),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.16,
                width: MediaQuery.of(context).size.width * 0.16,
                decoration: BoxDecoration(
                  gradient: AppColors.kprimaryGradient,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Text(
                    '${(progress * 100).round()}%',
                    style: AppTextStyle.subtitle.copyWith(
                      color: AppColors.kwhiteColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
