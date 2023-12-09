import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Counter Function")),
        actions: [
          IconButton(icon: const Icon(Icons.refresh_rounded), onPressed: () { 
            setState(() {
              counter = 0;
            });
           },),
        ],
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString(), style: const TextStyle( fontSize: 100, fontWeight: FontWeight.normal ),),
              Text("Click${counter > 1 ? 's' : ''}", style: const TextStyle( fontSize: 20, fontWeight: FontWeight.normal ),)
            ],
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.plus_one, cb: () {
            counter++;
            setState(() {});
          },),

          const SizedBox( height: 20, ),
          CustomButton(icon: Icons.refresh_outlined, cb: (){
            counter = 0;
            setState(() {});
          },),

          const SizedBox( height: 20, ),
          CustomButton(icon: Icons.exposure_minus_1_outlined, cb: () {
            if(counter == 0) return;
            counter--;
            setState(() {});
          },),
        ],)
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? cb;

  const CustomButton({
    super.key, 
    required this.icon,
    required this.cb
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      onPressed: cb,
      child: Icon(icon)
  );
  }
}
