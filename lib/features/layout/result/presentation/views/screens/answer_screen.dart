import 'package:flutter/material.dart';
import 'package:online_exam_app/core/Widgets/Custome_Elevated_Button.dart';
import 'package:online_exam_app/core/extensions/extensions.dart';
import 'package:online_exam_app/core/routes/app_routes.dart';
import 'package:online_exam_app/features/layout/result/presentation/views/widgets/questions_card.dart';

import '../../../../../../core/theme/app_colors.dart';

class AnswersScreen extends StatelessWidget {
  const AnswersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                Text(
                  "Answers",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return QuestionsCard();
                },
              ),
            ),
          ],
        ).setHorizontalAndVerticalPadding(context, 0.04, 0.012),
      ),
    );
  }
}
