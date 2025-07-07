import 'package:flutter/material.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';

class CustomeElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  const CustomeElevatedButton({super.key, required this.text, required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 48,
      child: ElevatedButton(onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? AppColors.blue,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            )
          ),
          child: Text(text, style: TextStyle(
            color: AppColors.white
          ),)
      ),
    );
  }
}
