import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fragua_custom_widgets/fragua_custom_widgets.dart';

class FGTextField extends StatelessWidget {
  String label;
  String error;
  String initialValue;
  IconData? icon;
  bool obscureText = false;
  bool showIcon = false;

  Function(String text) onChanged;

  FGTextField({super.key, 
    required this.label,
    required this.onChanged,
    this.icon =  null,
    this.error = '',
    this.initialValue = '',
    this.obscureText = false,
    this.showIcon = false


  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onChanged: (value) {
        onChanged(value);
      },
      decoration: InputDecoration(
          label: Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          errorText: error,
          errorBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: (error == '' ? FGColors.fgPrimaryColor :Colors.red  ) , width: 1.0), // Esto cambiará el borde a rojo cuando se muestre el error
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: FGColors.fgPrimaryColor, width: 2.0), // Esto cambiará el borde a naranja cuando el campo de texto tenga el foco y se muestre el error
          ),
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: (){},
            icon: Visibility(visible: showIcon, child:  Icon(icon),),
            color: Colors.black,
          )),
      validator: (value) {
        print('value ${value}');
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        } else if (!value.contains('@')) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      style: const TextStyle(
        color: Colors.black,
      ),
      obscureText: obscureText,
    );
  }
}
