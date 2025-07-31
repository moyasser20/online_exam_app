import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_exam_app/core/Assets/app_assets.dart';
import 'package:online_exam_app/core/Widgets/Custome_Elevated_Button.dart';
import 'package:online_exam_app/core/extensions/extensions.dart';
import 'package:online_exam_app/core/routes/app_routes.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import '../widgets/score_summery_widget.dart';

class ExamScoreScreen extends StatelessWidget {
  final int correctAnswer;
  final int totalQuestion;

  const ExamScoreScreen({
    super.key,
    required this.correctAnswer,
    required this.totalQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AppAssets.ArrowIcon),
        title: const Text(
          "Exam score",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Text(
            "Your Score",
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ).setHorizontalPadding(context, 0.05),
          const SizedBox(height: 30),
          ScoreSummary(correct: correctAnswer, total: totalQuestion),
          const SizedBox(height: 70),
          CustomeElevatedButton(text: "Show results", onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.resultScreen);
          }, color: AppColors.blue, textColor: AppColors.white,).setHorizontalPadding(context, 0.03),
          const SizedBox(height: 30),
          CustomeElevatedButton(text: "Start again", onPressed: () {}, color: AppColors.white, textColor: AppColors.blue, borderColor: AppColors.blue,).setHorizontalPadding(context, 0.03),
        ],
      ),
    );
  }
}
