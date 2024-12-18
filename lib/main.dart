import 'package:flutter/material.dart';
import 'package:flutter_responsive_assign2/first_saction.dart';
import 'package:flutter_responsive_assign2/second_saction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  static GlobalKey<FormState> key1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 7, 52, 90),
      backgroundColor: const Color.fromARGB(255, 2, 20, 35),
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: Form(
        key: MyApp.key1,
        child: const Center(
          child: Expanded(
            flex: 100,
            child: Column(
              children: [
                // top space
                Spacer(
                  flex: 2,
                ),
                Expanded(
                  flex: 10,
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
                  flex: 3,
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
        ),
      ),
    );
  }
}
