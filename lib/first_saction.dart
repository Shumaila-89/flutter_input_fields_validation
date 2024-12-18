import 'package:flutter/material.dart';

class FirstSaction extends StatelessWidget {
  const FirstSaction({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          color: Color.fromARGB(255, 7, 52, 90),
          Icons.person_3_rounded,
          size: 50,
        ),
      ),
    );
  }
}
