import 'package:flutter/material.dart';

import 'colors.dart';

class myTextField extends StatelessWidget {
  final IconData iconData;
  final String hintTitle;

  final FormFieldValidator validator;
  const myTextField({
    super.key,
    required this.hintTitle,
    required this.iconData,
    required this.validator,
    required TextEditingController controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade100,
        ),
        child: TextFormField(
          validator: validator,
          decoration: InputDecoration(
            hintText: hintTitle,
            hintStyle: TextStyle(
              color: Colors.grey.shade700,
            ),
            border: InputBorder.none,
            prefixIcon: Icon(
              iconData,
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
