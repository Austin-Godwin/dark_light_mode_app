import 'package:flutter/material.dart';
import 'package:switch_theme/utils/dep_injector.dart';

import 'view_model/home_view_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
    // required this.homeViewModel,
  }) : super(key: key);

  final String title;
  // final HomeViewModel homeViewModel;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final homeViewModel = DepInjector.of(context).homeViewModel;
    return AnimatedBuilder(
        animation: homeViewModel,
        builder: (context, _) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
              actions: [
                Switch(
                  value: homeViewModel.isDarkMode,
                  onChanged: homeViewModel.onToggle,
                ),
              ],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${homeViewModel.counter}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: homeViewModel.incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
