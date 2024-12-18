import 'package:flutter/material.dart';
import 'package:flutter_responsive_assign2/main.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      height: 45,
      //  button
      child: Material(
        color: const Color.fromARGB(255, 7, 52, 90),
        elevation: 10,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: InkWell(
          onTap: () {
            if (MyApp.key1.currentState?.validate() == true) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('USER REGISTERED  SUCCESSFULLY!')));
            }
            MyApp.key1.currentState?.validate();
          },
          child: Container(
            decoration: const BoxDecoration(),
            child: const Center(
              child: FittedBox(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
