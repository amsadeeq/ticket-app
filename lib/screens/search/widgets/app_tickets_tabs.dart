import 'package:flutter/material.dart';

class AppTicketsTabs extends StatelessWidget {
  const AppTicketsTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6FD),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Row(
        children: [
          AppTabs(tabText: "All Tickets"),
          AppTabs(tabText: "Hotel", tabBorder: true, tabColor: true),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  const AppTabs(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.44,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: tabColor == false ? Colors.white : Colors.transparent,
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(
                left: Radius.circular(50),
              )
            : const BorderRadius.horizontal(
                right: Radius.circular(50),
              ),
      ),
      child: Center(
        child: Text(tabText),
      ),
    );
  }
}
