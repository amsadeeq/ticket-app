import 'package:flutter/material.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          AppTextField(
            text: "Darpature",
            icon: Icons.flight_takeoff_sharp,
          ),
          SizedBox(height: 20),
          AppTextField(
            text: "Arrival",
            icon: Icons.flight_land,
          ),
        ],
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  const AppTextField({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
