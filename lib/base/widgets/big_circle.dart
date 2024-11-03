import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  const BigCircle({super.key, required this.isRight});

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
          color: Colors.white,
        ),
      ),
    );
  }
}
