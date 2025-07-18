import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_exam_app/core/extensions/extensions.dart';

import '../../../../../core/Assets/app_assets.dart';
import '../../../../../core/Widgets/Custome_Elevated_Button.dart';
import '../../../../../core/Widgets/custom_text_field.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/theme/app_colors.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  bool isFormValid = false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Image.asset(AppAssets.ArrowIcon),
        ),
        title: Text(
          "Password",
          style: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Form(
        key: _formState,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Reset password",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text("Password must not be empty and must contain 6 characters with upper case letter and one number at least", textAlign: TextAlign.center),
            const SizedBox(height: 25),
            CustomeTextFormField(
              label: "New Password",
              hint: "Enter your password",
            ),
            const SizedBox(height: 30),

            CustomeTextFormField(
              label: "Confirm Password",
              hint: "Confirm password",
            ),
            const SizedBox(height: 45),
            CustomeElevatedButton(
              text: "Continue",
              onPressed: isFormValid
                  ? () {
                if (_formState.currentState!.validate()) {
                  Navigator.pushNamed(context, AppRoutes.emailVarification);
                }
              }
                  : null,
              color: isFormValid ? AppColors.blue : Colors.grey,
            )
          ],
        ).setHorizontalAndVerticalPadding(context, 0.055, 0.05),
      ),


    );
  }
}
