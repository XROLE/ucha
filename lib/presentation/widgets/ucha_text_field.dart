import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucha/utils/app_colors.dart';

class UchaTextField extends StatelessWidget {
  final String title;
  const UchaTextField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        label: Text(title, style: TextStyle(color: Colors.black.withOpacity(.4)),),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary.withOpacity(.7)),
        ),

      ),
      keyboardType: TextInputType.number,
    );
  }
}
