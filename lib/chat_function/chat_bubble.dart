import 'package:flutter/material.dart';
import 'package:new_restuarent_app/components/colors.dart';

class chatBubble extends StatelessWidget {
  final String message;
  const chatBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: primaryColor.withOpacity(0.6),
      ),
      child: Text(
        message,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
