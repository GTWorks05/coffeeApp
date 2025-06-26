import 'package:flutter/material.dart';
import 'coffee_bloc.dart';
import 'coffee_concept_home.dart';

class MainCoffeeConceptApp extends StatefulWidget {
  const MainCoffeeConceptApp({super.key});

  @override
  _MainCoffeeConceptAppState createState() => _MainCoffeeConceptAppState();
}

class _MainCoffeeConceptAppState extends State<MainCoffeeConceptApp> {
  final bloc = CoffeeBLoC();

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: CoffeeProvider(
        bloc: bloc,
        child: MaterialApp(
          theme: ThemeData(fontFamily: 'Helvetica'),
          debugShowCheckedModeBanner: false,
          home: CoffeeConceptHome(),
        ),
      ),
    );
  }
}
