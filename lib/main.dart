import 'package:bloc_cubit/presentation/views/home_view.dart';
import 'package:bloc_cubit/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_bloc_provider.dart';
import 'domain/cubit//theme_cubit.dart';

void main() {
  runApp(const MyApp());
}

class Lava extends StatelessWidget {
  Lava({Key? key, required this.router}) : super(key: key);
  final AppRoutes router;

  @override
  Widget build(BuildContext context) {
    ThemeCubit cubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    bool isDark = cubit.isDark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/home',
      onGenerateRoute: router.generateRoute,
      home: HomePage(),
    );
  }
}
