import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 43, left: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Your ",
                  style: TextStyle(fontSize: 21),
                ),
                const Text(
                  "Cards",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 100,
                    aspectRatio: 3.1,
                  ),
                  items: [
                    1,
                    2,
                    3,
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Column(
                          children: [
                            const Icon(Icons.mail_outlined),
                            const Text("****4092"),
                            Text("slno. $i"),
                          ],
                        );
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Acivity"),
                    Text(
                      "History",
                      style: TextStyle(backgroundColor: Colors.green),
                    )
                  ],
                ),
                const Text("06 June"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.food_bank_rounded),
                        Text("McDonald's")
                      ],
                    ),
                    const Text("-\$ 5.99")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.health_and_safety_rounded),
                        Text("Health insurance")
                      ],
                    ),
                    const Text("-\$ 54.51")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [Icon(Icons.person), Text("transfer")],
                    ),
                    const Text("\$ 150")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.receipt_rounded),
                        Text("Bills")
                      ],
                    ),
                    const Text("-\$ 400.00")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
/* 
       
        */

/*

          */
