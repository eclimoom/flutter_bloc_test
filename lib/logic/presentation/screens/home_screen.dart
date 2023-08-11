import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/logic/presentation/components/counter_bloc/bloc.dart';
import 'package:flutter_bloc_test/logic/presentation/components/counter_bloc/state.dart';

import '../components/counter_bloc/event.dart';
import '../components/counter_bloc/view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. 通过 BlocProvider.of 获取 CounterBloc
    final bloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 2. 通过 BlocBuilder CounterBloc
            BlocBuilder<CounterBloc, CounterBlocState>(
              builder: (context, state) {
                return Column(children: [
                  Text(
                    'HomeScreen \n 点击了 ${state.count} 次',
                    style: const TextStyle(fontSize: 30.0),
                  ),
                  const CounterBlocPage(),
                ],);
              },
            )
          ],
        ),
        floatingActionButton:
        Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  bloc.add(CounterIncrementEvent());
                },
                child: const Icon(
                    Icons.plus_one
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: () {
                  bloc.add(CounterMinusEvent());
                },
                child: const Icon(
                    Icons.exposure_minus_2
                ),
              )
            ]
        )
    );
  }
}
