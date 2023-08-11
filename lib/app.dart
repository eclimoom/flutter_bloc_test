import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/logic/presentation/components/counter_bloc/bloc.dart';

import 'logic/navigation/constants/navigation_cubit.dart';
import 'logic/presentation/root_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // 全局注册
        providers: [
          BlocProvider<NavigationCubit>(
              create: (BuildContext context) => NavigationCubit()),
          BlocProvider<CounterBloc>(
              create: (BuildContext context) => CounterBloc())
        ],
        child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.blue),
          home: const RootScreen(),
        ));
  }
}
