import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String initialValue, hintText;
  const RoundedTextField({
    super.key,
    required this.initialValue,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(hintText, style: TextStyle(color: Colors.white60)),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: Colors.black.withAlpha((0.1 * 255).toInt()),
            ),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: TextEditingController(text: initialValue),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
