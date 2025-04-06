import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeMessageView extends StatelessWidget {
  final String message;
  const WelcomeMessageView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          message,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Enter your Informations below",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
