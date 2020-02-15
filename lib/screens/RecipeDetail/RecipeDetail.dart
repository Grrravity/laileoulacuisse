import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/RecipeDetail/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/RecipeDetail/RecipeDetail-bloc.dart';

class RecipeDetail extends StatefulWidget {
  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  RecipeDetailBloc recipeDetailBloc;

  @override
  void initState() {
    super.initState();

    recipeDetailBloc = RecipeDetailBloc();
  }

  @override
  void dispose() {
    recipeDetailBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: RecipeDetailBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("RecipeDetail Screen"),
        ),
        body: Body(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.kitchen),
              title: Text('Salon'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.room_service),
              title: Text('Recettes'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text('Menu'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Liste de course'),
            ),
          ],

        ),
      ),
    );
  }
}