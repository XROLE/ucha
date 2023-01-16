import 'package:flutter/material.dart';
import 'package:ucha/presentation/widgets/app_keyboard_resizer.dart';
import 'package:ucha/presentation/widgets/buttons/app_button.dart';
import 'package:ucha/presentation/widgets/ucha_text_field.dart';

class DescriptionForm extends StatelessWidget {
  const DescriptionForm({super.key});

  @override
  Widget build(BuildContext context) {
     Widget spacer = const SizedBox(height: 20);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children:  [
            const UchaTextField(
              title: "Quantity",
            ),
            spacer,
           const  UchaTextField(
              title: "Height",
            ),
             spacer,
           const  UchaTextField(
              title: "Width",
            ),
         
          ],
        ),
      ]),
    );
  }
}
