import 'package:flutter/material.dart';
import 'package:lojaexemplo/models/product.dart';
import 'package:lojaexemplo/providers/counter.dart';


class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo Contador")),
      body: Column(
        children: [
          Text(CounterProvider.of(context)?.state.value.toString() ?? "0"),
          IconButton(
              onPressed: () {
                setState(() {
                  CounterProvider.of(context)?.state.inc();//? se não há garantia que teremos o counter provider
                });
                print(CounterProvider.of(context)?.state.value.toString());
              },
              icon: Icon(Icons.add)
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  CounterProvider.of(context)?.state.dec();
                });
                print(CounterProvider.of(context)?.state.value.toString());
              },
              icon: Icon(Icons.remove)
          )
        ],
      ),
    );
  }
}