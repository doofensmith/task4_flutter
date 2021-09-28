import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  //attr
  int? maxLength;
  int? maxLines;
  String? hintText;
  String? labelText;
  TextEditingController? controller;
  TextCapitalization? textCapitalization;

  CustomTextField({
    required this.controller,
    this.maxLength,
    this.maxLines,
    this.hintText,
    this.labelText,
    this.textCapitalization,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          isDense: true,
          counterText: '',
          border: const OutlineInputBorder(),
        ),
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    );
  }
}
