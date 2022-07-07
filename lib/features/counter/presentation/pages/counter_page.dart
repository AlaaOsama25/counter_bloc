import 'package:flutter/material.dart';

import '../widgets/counter_widget.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Task'),
        centerTitle: true,
      ),
      body: CounterWidget(),
    );
  }
}
