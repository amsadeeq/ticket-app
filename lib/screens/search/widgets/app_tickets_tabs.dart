import 'package:flutter/material.dart';

class AppTicketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6FD),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          AppTabs(tabText: firstTab),
          AppTabs(tabText: secondTab, tabBorder: true, tabColor: true),
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
