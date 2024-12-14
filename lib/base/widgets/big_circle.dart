import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  final bool? isColor;
  const BigCircle({super.key, required this.isRight, this.isColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: isRight == true
              ? const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  bottomLeft: Radius.circular(21),
                )
              : const BorderRadius.only(
                  topRight: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
          color: isColor == null ? Colors.white : Colors.grey.shade200,
        ),
      ),
    );
  }
}
