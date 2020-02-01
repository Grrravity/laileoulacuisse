import 'package:flutter/material.dart';
import 'package:laile_ou_la_cuisse/screens/Recipe/components/body.dart';
import 'package:laile_ou_la_cuisse/screens/Recipe/Recipe-bloc.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';

class Recipe extends StatefulWidget {
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  RecipeBloc recipeBloc;

  @override
  void initState() {
    super.initState();

    recipeBloc = RecipeBloc();
  }

  @override
  void dispose() {
    recipeBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: RecipeBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Recipe Screen"),
        ),
        body: Body(),
      ),
    );
  }
}