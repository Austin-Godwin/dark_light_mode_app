import 'package:flutter/material.dart';
import 'package:switch_theme/utils/dep_injector.dart';
import 'package:switch_theme/utils/theme.dart';
import 'view/home_view.dart';
import 'view/view_model/home_view_model.dart';

void main() {
  runApp(
    DepInjector(
      homeViewModel: HomeViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = DepInjector.of(context).homeViewModel;
    return AnimatedBuilder(
        animation: homeViewModel,
        builder: (context, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: CustomTheme.lightTheme(),
            darkTheme: CustomTheme.darkTheme(),
            themeMode: homeViewModel.themeMode,
            // ThemeData(
            //   primarySwatch: Colors.blue,
            // ),
            home: const MyHomePage(
              title: 'Flutter Demo Home Page',
              // homeViewModel: HomeViewModel(),
            ),
          );
        });
  }
}
