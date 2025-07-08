import 'package:flutter/material.dart';
import 'package:online_exam_app/core/Assets/app_assets.dart';
import 'package:online_exam_app/core/Widgets/Custome_Elevated_Button.dart';
import 'package:online_exam_app/core/Widgets/custom_text_field.dart';
import 'package:online_exam_app/core/extensions/padding_ext.dart';
import 'package:online_exam_app/core/routes/app_routes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Image.asset(AppAssets.ArrowIcon),
        ),
        title: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.w600)),
      ),
      body: Column(
        children: [
          const CustomeTextFormField(
            label: "User Name",
            hint: "Enter User Name",
          ).setHorizontalAndVerticalPadding(context, 0.05, 0.005),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(
                child: CustomeTextFormField(
                  label: 'First Name',
                  hint: "Enter first name",
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: CustomeTextFormField(
                  label: 'Second Name',
                  hint: "Enter Last name",
                ),
              ),
              SizedBox(width: 16),
            ],
          ).setHorizontalAndVerticalPadding(context, 0.003, 0.03),
          const CustomeTextFormField(
            label: "Email",
            hint: "Enter your Email",
          ).setHorizontalAndVerticalPadding(context, 0.05, 0.005),
          Row(
            children: [
              SizedBox(width: 16),
              Expanded(
                child: CustomeTextFormField(
                  label: 'Password',
                  hint: "Enter Password",
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: CustomeTextFormField(
                  label: 'Confirm Password',
                  hint: "Confirm Password",
                ),
              ),
              SizedBox(width: 16),
            ],
          ).setHorizontalAndVerticalPadding(context, 0.003, 0.03),
          const CustomeTextFormField(
            label: "Phone Number",
            hint: "Enter phone number",
          ).setHorizontalAndVerticalPadding(context, 0.05, 0.005),
          const SizedBox(height: 50),
          CustomeElevatedButton(text: "Signup", onPressed: () {
            Navigator.pushNamed(context, AppRoutes.profile);
          }),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.login);
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    decorationThickness: 2,
                    height: 2
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
