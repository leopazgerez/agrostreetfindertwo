import 'package:flutter/material.dart';

class LoadFieldPage extends StatefulWidget {
  const LoadFieldPage({Key? key}) : super(key: key);

  @override
  State<LoadFieldPage> createState() => _LoadFieldPageState();
}

class _LoadFieldPageState extends State<LoadFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Campo', style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}
