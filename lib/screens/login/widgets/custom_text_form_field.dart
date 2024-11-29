import 'package:flutter/material.dart';
import '../../../resourses/colors_manager.dart';
import '../../../resourses/styles_manager.dart';
import 'validation.dart';

class CustomTextField extends StatelessWidget {
  final String? hint, label;
  final Iterable<String>? autoFillHints;
  final bool isObscure;
  final void Function(String)? onChanged;
  final Widget? prefixIcon, suffixIcon;
  final bool? isFilled;
  final TextInputType inputType;
  final String? Function(String?)? customValidator;
  final TextDirection? textDirection;

  const CustomTextField(
      {super.key,
      this.label,
      this.autoFillHints,
      required this.inputType,
      required this.onChanged,
      this.isObscure = false,
      this.hint,
      this.prefixIcon,
      this.suffixIcon,
      this.isFilled,
      this.customValidator,
      this.textDirection});

  static final validationService = ValidationServiceImpl();

  String? Function(String?)? get _defaultValidator {
    switch (inputType) {
      case TextInputType.name:
        return validationService.validateName;
      case TextInputType.visiblePassword:
        return validationService.validatePassword;
      case TextInputType.emailAddress:
        return validationService.validateEmailOrPhoneNumber;
      default:
        return validationService.validateNotEmpty;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofillHints: autoFillHints,
      obscureText: isObscure,
      keyboardType: inputType,
      textDirection: textDirection,
      validator: customValidator ?? _defaultValidator,
      onChanged: onChanged,
      style: Styles.style16Medium().copyWith(color: ColorsManager.black),
      cursorColor: ColorsManager.blue,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        hintText: hint,
        labelText: label,
        filled: isFilled,
        fillColor: ColorsManager.textFormFieldFillcolor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
