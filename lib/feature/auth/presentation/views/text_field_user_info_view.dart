import 'package:flutter/cupertino.dart';
import 'package:login_app/core/utils/app_string.dart';
import 'package:login_app/feature/auth/presentation/widget/rounded_text_field.dart';

class TextFieldUserInfoView extends StatelessWidget {
  const TextFieldUserInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      children: [
        RoundedTextField(
          initialValue: "devratechsolution@gmail.com",
          hintText: AppString.email,
        ),
        RoundedTextField(initialValue: "xxxxxx", hintText: AppString.password),
      ],
    );
  }
}
