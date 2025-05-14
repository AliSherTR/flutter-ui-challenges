import 'package:flutter/material.dart';

class AFormDivider extends StatelessWidget {
  final String text;

  const AFormDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0), // Vertical spacing
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey[400]
                  : Colors.grey[700],
              thickness: 1.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0), // Space between dividers and text
            child: Text(
              text,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w500, // Slightly bolder for emphasis
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.grey[400]
                  : Colors.grey[700],
              thickness: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}