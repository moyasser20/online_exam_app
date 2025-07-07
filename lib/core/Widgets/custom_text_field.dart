import 'package:flutter/material.dart';

class CustomeTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String? label;
  final String? hint;
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
    this.isPassword = false,
    this.keyboardType= TextInputType.text,
    this.enabled = true,
    this.readonly =  false,
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
      enabled: widget.enabled,
      readOnly: widget.readonly,
      obscureText: widget.isPassword ? obscureText : false,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      onChanged: widget.onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        border: const OutlineInputBorder(),
        errorStyle:  const TextStyle(color: Colors.red, fontSize: 12)
      ),
    );
  }
}
