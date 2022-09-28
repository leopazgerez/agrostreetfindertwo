import 'package:flutter/material.dart';

class LoadPointPage extends StatefulWidget {
  const LoadPointPage({Key? key}) : super(key: key);

  @override
  State<LoadPointPage> createState() => _LoadPointPageState();
}

class _LoadPointPageState extends State<LoadPointPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Camino', style: Theme.of(context).textTheme.headline6)
      ),
      body: _body(),
    );
  }

  Widget _body(){
    return Form(
        key: _formKey,
        child:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget> [
              TextFormField(
                textCapitalization: TextCapitalization.sentences,
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColorLight,
                            style: BorderStyle.none )
                    ),
                    labelText: 'Nombre',
                    labelStyle: Theme.of(context).textTheme.subtitle2
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ],
          ),
        ));
  }
}
