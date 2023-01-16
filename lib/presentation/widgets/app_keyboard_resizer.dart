import 'package:flutter/material.dart';

class AppKeyboardResizer extends StatelessWidget {
  final Widget child;
  const AppKeyboardResizer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: child);
  }
}
