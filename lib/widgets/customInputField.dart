import 'package:flutter/material.dart';

class customInputField extends StatelessWidget {
  final String? hintext;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? suffixIcon;

  const customInputField({
    Key? key,
    this.hintext,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
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
        print('value $value');
      },
      validator: (value) {
        if (value == null) return 'este campo es requerido';
        return value.length < 3 ? counterText : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
