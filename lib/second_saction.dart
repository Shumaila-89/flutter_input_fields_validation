import 'package:flutter/material.dart';
import 'package:flutter_responsive_assign2/custom_button.dart';
import 'package:flutter_responsive_assign2/custom_textfield.dart';
import 'package:flutter_responsive_assign2/validation_logic.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 5,
            blurRadius: 3,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
      ),
      child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 10,
            child: Row(
              children: [
                Spacer(
                  flex: 30,
                ),
                Expanded(
                  flex: 40,
                  child: FittedBox(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 7, 52, 90),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 30,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 90,
            child: Row(
              children: [
                // left
                const Spacer(
                  flex: 1,
                ),

                Expanded(
                  flex: 20,
                  child: Column(
                    children: [
                      //top
                      const Spacer(
                        flex: 1,
                      ),

                      CustomTextField(
                        prefixIcon: Icons.person,
                        hint: 'username',
                        myValidator: (value) {
                          // MyLogic.userNameLogic(value);
                          if (value!.isEmpty) {
                            return 'Empty Field!';
                          } else {
                            return null;
                          }
                        },
                      ),

                      const Spacer(
                        flex: 1,
                      ),
                      CustomTextField(
                          myValidator: (value) {
                            // MyLogic.userNameLogic(value);
                            if (value!.isEmpty) {
                              return 'Empty Field!';
                            } else if (!value.endsWith('@gmail.com')) {
                              return 'Invalid Gmail';
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: Icons.email,
                          hint: 'Email'),

                      const Spacer(
                        flex: 1,
                      ),
                      CustomTextField(
                          myValidator: (value) {
                            // MyLogic.userNameLogic(value);
                            if (value!.isEmpty) {
                              return 'Empty Field!';
                            } else if (value.length < 8) {
                              return 'Must be 8 characters long!';
                              // ignore: unrelated_type_equality_checks
                            }
                          },
                          prefixIcon: Icons.lock,
                          hint: 'Password'),

                      const Spacer(
                        flex: 1,
                      ),
                      CustomTextField(
                        myValidator: (value) {
                          // MyLogic.userNameLogic(value);
                          if (value!.isEmpty) {
                            return 'Empty Field!';
                          } else if (!value.codeUnits.every(
                            (element) => element >= 48 && element <= 57,
                          )) {
                            return 'Enter only digits!';
                          } else if (value.length != 11) {
                            return 'Enter  11 digits!';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Icons.phone_android,
                        hint: 'Phone Number',
                      ),

                      const Expanded(
                        flex: 5,
                        child: Row(
                          children: [
                            Spacer(
                              flex: 20,
                            ),
                            Expanded(
                              flex: 40,
                              child: CustomButton(),
                            ),
                            Spacer(
                              flex: 20,
                            ),
                          ],
                        ),
                      ),

                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                // right
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
