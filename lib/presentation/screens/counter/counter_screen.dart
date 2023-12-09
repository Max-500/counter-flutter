import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Counter Screen")),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString(), style: const TextStyle( fontSize: 100, fontWeight: FontWeight.normal ),),
              Text("Click${counter == 1 ? '' : 's'}", style: const TextStyle( fontSize: 20, fontWeight: FontWeight.normal ),)
            ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          counter++;
        });
      },
      child: const Icon(Icons.plus_one),),
    );
  }
}
