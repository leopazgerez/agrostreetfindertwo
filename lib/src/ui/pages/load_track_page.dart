import 'package:agrostreetfindertwo/src/ui/pagecontrollers/load_track_page_controllers.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class LoadTrackPage extends StatefulWidget {
  const LoadTrackPage({Key? key}) : super(key: key);

  @override
  _LoadTrackPageState createState() => _LoadTrackPageState();
}

class _LoadTrackPageState extends StateMVC<LoadTrackPage> {
  final LoadTrackPageController _con = LoadTrackPageController.con;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Camino', style: Theme.of(context).textTheme.headline6)
      ),
      body: Column(children: [
        Expanded(
          child: SingleChildScrollView(
              child: _body()),
        ),
        _buttons(_formKey),
      ])
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
                controller: _con.nameController,
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
              const SizedBox(height: 20),
              TextFormField(
                controller: _con.descriptionController,
                textCapitalization: TextCapitalization.sentences,
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColorLight,
                            style: BorderStyle.none )
                    ),
                    labelText: 'Descripcion',
                    labelStyle: Theme.of(context).textTheme.subtitle2
                ),
              ),
              const SizedBox(height: 20),
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
  }
}
