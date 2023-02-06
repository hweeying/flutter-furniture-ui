import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_ui/theme.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.isActive = true})
      : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.activeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // <-- Radius
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          label,
          style: AppTextStyle.button,
        ),
      ),
    );
  }
}
