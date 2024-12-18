import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.prefixIcon,
    // required this.border,
    this.border = const OutlineInputBorder(),
  
    required this.hint,
    this.type = TextInputType.text,
    // required this.controller=TexttE
    this.controller,
    this.myValidator,
    this.max = 20,
    super.key,
  });

 
  final String hint;
  final TextInputType type;
  final IconData prefixIcon;
  final int max;
  final InputBorder border;
  final String? Function(String?)? myValidator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: TextFormField(
        
        controller: controller,
        maxLength: max,
        validator: myValidator,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: hint,
            fillColor: Colors.grey.withOpacity(0.3),
            filled: true,
            prefixIcon: FittedBox(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                prefixIcon,
              ),
            )),
            prefixIconColor: Color.fromARGB(255, 7, 52, 90),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            )),
      ),
    );
  }
}
