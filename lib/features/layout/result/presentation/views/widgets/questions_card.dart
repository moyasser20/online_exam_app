import 'package:flutter/material.dart';
import 'package:online_exam_app/core/extensions/extensions.dart';
import 'package:online_exam_app/features/layout/result/domain/enitiy/answers_model.dart';

import '../../../../../../core/theme/app_colors.dart';

class QuestionsCard extends StatelessWidget {
  // final String question;
  // final List<AnswerModel> answers;
  const QuestionsCard({
    super.key,
    // required this.question,
    // required this.answers,
  });

  // Color getAnswerColor(AnswerModel answer) {
  //   if(answer.isCorrect && answer.isSelected) AppColors.green;
  //   if(!answer.isCorrect && answer.isSelected) AppColors.red;
  //   if(!answer.isCorrect && !answer.isSelected) AppColors.lightBlue;
  //   return AppColors.grey;
  // }
  //
  // IconData? getAnswerModel (Ans)

  @override
  Widget build(BuildContext context) {
    final int selectedAnswerIndex = 1;

    return Container(
      height: 350,
      width: 345,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black.withOpacity(0.01), // black border
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select the correctly punctuated\nsentence.",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            const SizedBox(height: 5),
            Column(
              children: List.generate(4, (index) {
                return RadioListTile<int>(
                  value: index,
                  groupValue: selectedAnswerIndex,
                  onChanged: null,
                  title: const Text("its going to rain today"),
                  activeColor: AppColors.blue,
                  controlAffinity: ListTileControlAffinity.leading,
                  tileColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                );
              }),
            ),
          ],
        ).setHorizontalAndVerticalPadding(context, 0.03, 0.007),
      ),
    ).setVerticalPadding(context, 0.02);
  }
}
