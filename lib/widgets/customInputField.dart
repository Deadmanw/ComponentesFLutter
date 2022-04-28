import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintext;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final bool isPassword;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintext,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.suffixIcon,
    this.inputType,
    this.isPassword = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      keyboardType: inputType,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText ?? '',
        hintText: hintext ?? '',
        helperText: helperText ?? '',
        counterText: counterText ?? '',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        //prefixIcon: Icon(Icons.usb_rounded),
        icon: icon == null ? null : Icon(icon),
        /* focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10)),
        ), */
      ),
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        //print('value $value');
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'este campo es requerido';
        return value.length < 3 ? 'minimo 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
