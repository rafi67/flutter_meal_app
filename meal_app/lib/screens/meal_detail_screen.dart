import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {

  static const routeName = '/meal-detail';

  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          title: Text(mealId),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(child: Text('The meal - $mealId!'),)
    );
  }
}
