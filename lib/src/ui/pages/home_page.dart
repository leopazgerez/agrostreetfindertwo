import 'package:agrostreetfindertwo/src/ui/pagecomponents/custom_expandable_button.dart';
import 'package:agrostreetfindertwo/src/ui/pagecontrollers/home_page_controllers.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends StateMVC<HomePage> {
  final HomePageController _con = HomePageController.con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: Theme.of(context).textTheme.titleLarge),
      ),
      body: const Placeholder(),
      floatingActionButton: CustomExpandableButton(
        distance: 70,
        children: [
          AnimationButton(
            icon: const Icon(Icons.route_outlined),
            onPressed: () => _con.goToLoadFieldPage(context),
          ),
          AnimationButton(
            icon: const Icon(Icons.place_outlined),
            onPressed: () => _con.goToLoadPointPage(context),
          ),
        ],
      ),
      drawer: _drawer(),
    );
  }

  Widget _button() {
    return Stack(
      children: [
        Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ],
    );
  }

  Widget _drawer() {
    return _con.drawerController(
        Drawer(
          elevation: 8,
          width: 200,
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                title: const Text('Menu'),
                leading: const IconButton(
                    onPressed: null,
                    iconSize: 30,
                    icon: Icon(Icons.arrow_back_rounded)),
              ),
              const SizedBox(
                height: 80,
              ),
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
              ExpansionTile(
                title: Text('data'),
                subtitle: Text('data'),
              )
            ],
          ),
        ),
        DrawerAlignment.start);
  }
}
