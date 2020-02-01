import 'package:flutter/material.dart';

import 'package:laile_ou_la_cuisse/theme/style.dart';
import 'package:laile_ou_la_cuisse/routes.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov-tree.dart';
import 'package:laile_ou_la_cuisse/bloc/bloc-prov.dart';
import 'package:laile_ou_la_cuisse/blocs/blocs.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: <BlocProvider>[
        BlocProvider<AuthBloc>(bloc: AuthBloc()),
        BlocProvider<PrefBloc>(bloc: PrefBloc()),
      ],
      child: MaterialApp(
        title: 'L\'aile ou la cuisse',
        theme: MyTheme.defaultTheme,
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}