import 'package:flutter/material.dart';

class ASocialButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback? onPressed;

  const ASocialButton({
    super.key,
    required this.text,
    required this.imagePath,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0), // Match AAppButton padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Less rounded corners
        ),
        side: BorderSide(
          color: Theme.of(context).brightness == Brightness.light
              ? Colors.grey[500]!
              : Colors.white, // Light blue border for dark theme
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Fit content
        children: [
          Image.asset(
            imagePath,
            width: 24.0, // Fixed size for consistency
            height: 24.0,
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.error,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.red
                  : Colors.redAccent,
            ),
          ),
          const SizedBox(width: 8.0), // Space between image and text
          Text(
            text,
            style: Theme.of(context).textTheme.labelMedium
          ),
        ],
      ),
    );
  }
}