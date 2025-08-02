import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomeTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final VoidCallback? onPressed;
  final String? label;
  final String? initialText; // for profile
  final String? hint;
  final String? suffixText; // only shows suffix, no tap handler
  final bool isPassword;
  final TextInputType keyboardType;
  final bool enabled;
  final bool readonly;

  const CustomeTextFormField({
    super.key,
    this.controller,
    this.validator,
    this.onChanged,
    this.label,
    this.hint,
    this.suffixText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.enabled = true,
    this.readonly = false,
    this.initialText,
    this.onPressed,
  });

  @override
  State<CustomeTextFormField> createState() => _CustomeTextFormFieldState();
}

class _CustomeTextFormFieldState extends State<CustomeTextFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      initialValue: widget.initialText,
      style: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w400,
        fontSize: 18,
      ),
      enabled: widget.enabled,
      readOnly: widget.readonly,
      obscureText: widget.isPassword ? obscureText : false,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      onChanged: widget.onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.black),
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(color: AppColors.grey.withOpacity(0.4)),
        suffix:
            widget.suffixText != null
                ? GestureDetector(
                  onTap: widget.onPressed ?? (){},
                  child: Text(
                    widget.suffixText!,
                    style: TextStyle(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                )
                : null,
        border: const OutlineInputBorder(),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
      ),
    );
  }
}
