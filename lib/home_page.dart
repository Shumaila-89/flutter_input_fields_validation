import 'package:flutter/material.dart';
import 'package:flutter_responsive_assign2/first_saction.dart';
import 'package:flutter_responsive_assign2/second_saction.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Expanded(
        flex: 100,
        child: Column(
          children: [
            // top space
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  // icon left side space
                  Spacer(
                    flex: 1,
                  ),
                  FirstSaction(),
                  //icon right side space
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
           
            Spacer(
              flex: 6,
            ),

            Expanded(
              flex: 85,
              child: Column(
                children: [
                  Expanded(
                    flex: 80,
                    child: Row(
                      children: [
                        Spacer(
                          flex: 5,
                        ),
                        Expanded(
                          flex: 10,
                          child: SecondSection(),
                        ),
                        Spacer(
                          flex: 5,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //bottom space
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
