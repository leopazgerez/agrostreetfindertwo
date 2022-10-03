import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../pagecontrollers/load_field_page_controllers.dart';

class LoadFieldPage extends StatefulWidget {
  const LoadFieldPage({Key? key}) : super(key: key);

  @override
  _LoadFieldPageState createState() => _LoadFieldPageState();
}

class _LoadFieldPageState extends StateMVC<LoadFieldPage> {
  final _formKey = GlobalKey<FormState>();
  final LoadFieldPageController _con = LoadFieldPageController.con;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Campo', style: Theme.of(context).textTheme.headline6)),
        body: Column(children: [
          _body(),
          _buttons(_formKey),
        ]));
  }

  Widget _body() {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _con.nameController,
                textCapitalization: TextCapitalization.sentences,
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColorLight,
                            style: BorderStyle.none)),
                    labelText: 'Nombre',
                    labelStyle: Theme.of(context).textTheme.subtitle2),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _con.corpController,
                textCapitalization: TextCapitalization.sentences,
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColorLight,
                            style: BorderStyle.none)),
                    labelText: 'Cultivo',
                    labelStyle: Theme.of(context).textTheme.subtitle2),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _con.areaController,
                textCapitalization: TextCapitalization.sentences,
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColorLight,
                            style: BorderStyle.none)),
                    labelText: 'Hectareas',
                    labelStyle: Theme.of(context).textTheme.subtitle2),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }

  Widget _buttons(formKey) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              // color: Theme.of(context).colorScheme.secondary,
              child: ElevatedButton(
                  onPressed: () => _con.backToHomePage(context),
                  child: Icon(
                    Icons.cancel,
                    size: 45,
                    color: Theme.of(context).colorScheme.secondary,
                  )),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Guardado')));
                    }
                  },
                  child: Icon(
                    Icons.save,
                    size: 45,
                    color: Theme.of(context).colorScheme.secondary,
                  )),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
