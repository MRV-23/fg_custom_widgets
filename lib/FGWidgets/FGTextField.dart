import 'package:flutter/material.dart';

class FGTextField extends StatelessWidget {
  String label;
  String error;
  String initialValue;
  IconData icon;
  bool obscureText = false;
  Function(String text) onChanged;

  FGTextField({super.key, 
    required this.label,
    required this.icon,
    required this.onChanged,
    this.error = '',
    this.initialValue = '',
    this.obscureText = false,
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
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            onPressed: (){},
            icon: Visibility(visible: true, child:  Icon(icon),),
            color: Colors.black,
          )),
      style: const TextStyle(
        color: Colors.black,
      ),
      obscureText: obscureText,
    );
  }
}
