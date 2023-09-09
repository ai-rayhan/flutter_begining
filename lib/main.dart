import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 70,
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text("Home"),
        leading: const Icon(Icons.storefront),
        actions: const [
           Icon(Icons.search),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "This is mod 5 Assignment",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            RichText(
                text: const TextSpan(
              text: "My ",
              style: TextStyle(color: Colors.red, fontSize: 20),
              children: [
                TextSpan(
                  text: "phone ",
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ),
                TextSpan(
                  text: "name ",
                  style: TextStyle(color: Colors.purpleAccent, fontSize: 16),
                ),
                TextSpan(
                  text: "Sumsumg Galaxy J7",
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}