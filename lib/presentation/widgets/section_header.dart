import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SectionHeader({
    super.key, required this.title, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: onTap,
          child: const Text(
            "See all",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}