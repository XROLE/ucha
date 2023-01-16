import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucha/utils/app_colors.dart';
import 'package:ucha/utils/app_text_style.dart';

class AppButton extends StatefulWidget {
  final Function() onTap;
  final String title;
  const AppButton({super.key, required this.onTap, required this.title});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
        child: Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(10)),
      child: Text(
        widget.title,
        style: AppTextStyle.medium(color: Colors.white),
      ),
    ));
  }
}
