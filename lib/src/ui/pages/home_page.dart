import 'package:agrostreetfindertwo/src/ui/pagecomponents/custom_expandable_button.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: const Placeholder(),
      floatingActionButton: const CustomExpandableButton(distance: 112, children: [
        AnimationButton(icon: Icon(Icons.abc_rounded)),
        AnimationButton(icon: Icon(Icons.abc_rounded)),
        AnimationButton(icon: Icon(Icons.abc_rounded)),
        AnimationButton(icon: Icon(Icons.abc_rounded)),
      ],),
      drawer: _drawer(),
    );
  }

  Widget _button(){
    return Stack(
      children:[
      Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(50),
        color: Colors.black,
        child: Container(height: 50, width: 50,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(50),

        ),
        ),
      ),
    ],
    );
  }

  Widget _drawer(){
    return Drawer(
      elevation: 8,
      width: 200,
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          const SizedBox(height: 80,),
          // AppBar(title: Text('data'),),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          const Divider(),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          const Divider(),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          const Divider(),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          const Divider(),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          const Divider(),
          Container(
            width: double.infinity,
            height: 30,
            color: Colors.black,
          ),
          const Divider(),
          ExpansionTile(title: Text('data'), subtitle: Text('data'),)
        ],
      ),
    );
  }
}

