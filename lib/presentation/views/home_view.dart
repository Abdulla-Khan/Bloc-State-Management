import 'package:bloc_cubit/domain/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit cubit = BlocProvider.of<ThemeCubit>(context, listen: false);
    bool isDark = cubit.isDark;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor:
              !isDark ? Colors.white : Color.fromARGB(255, 54, 54, 54),
          centerTitle: true,
          title:
              BlocBuilder<ThemeCubit, ThemeState>(builder: ((context, state) {
            return Text(
              isDark ? 'Theme is Dark' : 'Theme is Light',
              style: TextStyle(color: !isDark ? Colors.black : Colors.white),
            );
          })),
        ),
        body: BlocListener<ThemeCubit, ThemeState>(
            listener: (context, state) {},
            child: BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, ThemeState state) {
                return Container(
                  child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: isDark
                                ? Color.fromARGB(255, 132, 135, 138)
                                : Color.fromARGB(255, 169, 175, 185)),
                        onPressed: () {
                          cubit.Theme();
                        },
                        child: Text(
                          'Toggle Theme',
                          style: TextStyle(
                              color: isDark ? Colors.black : Colors.white),
                        )),
                  ),
                );
              },
            )));
  }
}
