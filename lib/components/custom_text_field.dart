import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ResponsiveTextField extends StatelessWidget {
  final IconData leadingIcon;
  final String helperText;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool isPassword;
  final bool isMultiline;

  const ResponsiveTextField({
    Key? key,
    required this.leadingIcon,
    required this.helperText,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.isMultiline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: isPassword,
      maxLines: isMultiline ? null : 1,
      decoration: InputDecoration(
        labelText: helperText,
        prefixIcon: Icon(leadingIcon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      validator: validator ?? (value) {
        if (value == null || value.isEmpty) {
          return 'This field cannot be empty.';
        }
        return null;
      },
    );
  }
}
