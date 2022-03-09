import 'package:bloc_cubit/domain/cubit/cubit/theme_cubit.dart';
import 'package:bloc_cubit/main.dart';
import 'package:bloc_cubit/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ThemeCubit>(create: (context) => ThemeCubit())
        ],
        child: Lava(
          router: AppRoutes(),
        ));
  }
}
