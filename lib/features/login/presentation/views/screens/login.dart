import 'package:flutter/material.dart';
import 'package:online_exam_app/core/Assets/app_assets.dart';
import 'package:online_exam_app/core/Widgets/custom_text_field.dart';
import 'package:online_exam_app/core/extensions/extensions.dart';
import 'package:online_exam_app/core/extensions/validations.dart';
import 'package:online_exam_app/core/routes/app_routes.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';

import '../../../../../core/Widgets/Custome_Elevated_Button.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool rememberme = true;
  bool isFormValid = false;

  final GlobalKey<FormState> _formState = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _validateForm() {
    final email = _emailController.text;
    final password = _passwordController.text;

    final emailValid = Validations.validateEmail(email);
    final passwordValid = Validations.validatePassword(password);

    setState(() {
      isFormValid = emailValid && passwordValid;
    });
  }

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateForm);
    _passwordController.addListener(_validateForm);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(AppAssets.ArrowIcon),
        ),
        title: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: Form(
        key: _formState,
        child: Column(
          children: [
            CustomeTextFormField(
              label: "Email",
              hint: "Enter Your Email",
              controller: _emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                }
                if (!Validations.validateEmail(value)) {
                  return "Invalid Email Format";
                }
                return null;
              },
            ).setHorizontalAndVerticalPadding(context, 0.03, 0.03),
            CustomeTextFormField(
              label: "Password",
              hint: "Enter Your Password",
              controller: _passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password is required";
                }
                if (!Validations.validatePassword(value)) {
                  return "Password must be at least 8 characters with a number and special character";
                }
                return null;
              },
            ).setHorizontalAndVerticalPadding(context, 0.03, 0.005),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: rememberme,
                      onChanged: (value) {
                        setState(() {
                          rememberme = value ?? true;
                        });
                      },
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                        decoration: TextDecoration.underline, fontSize: 15),
                  ),
                )
              ],
            ),
            const SizedBox(height: 50),
            CustomeElevatedButton(
              text: 'Login',
              onPressed: isFormValid
                  ? () {
                if (_formState.currentState!.validate()) {
                  print("Login Successful");
                }
              }
                  : null,
              color: isFormValid ? AppColors.blue : Colors.grey,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.SignUp);
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        decoration: TextDecoration.underline, fontSize: 18),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
