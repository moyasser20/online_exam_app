import 'package:flutter/material.dart';
import 'package:online_exam_app/core/Assets/app_assets.dart';
import 'package:online_exam_app/core/Widgets/Custome_Elevated_Button.dart';
import 'package:online_exam_app/core/Widgets/custom_text_field.dart';
import 'package:online_exam_app/core/extensions/extensions.dart';
import 'package:online_exam_app/core/routes/app_routes.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';
import 'package:online_exam_app/features/login/presentation/views/screens/login.dart';

import '../../../../../core/extensions/validations.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  bool isFormValid = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      final isValid = Validations.validateEmail(_emailController.text);
      if (isFormValid != isValid) {
        setState(() {
          isFormValid = isValid;
        });
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Forget password",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text("Please enter your email associated to\nyour account", textAlign: TextAlign.center),
            const SizedBox(height: 40),
            CustomeTextFormField(
              controller: _emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                }
                if (!Validations.validateEmail(value)) {
                  return "This Email is not valid";
                }
                return null;
              },
              label: "Email",
              hint: "Enter your email",
            ),
            const SizedBox(height: 50),
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

