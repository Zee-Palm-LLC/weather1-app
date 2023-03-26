import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.yellow)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5,
            width: 5,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.yellow),
          ),
          const SizedBox(width: 6),
          const Text(
            "Upcoming",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
