
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';

class CounterBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBloc() : super(CounterBlocState().init()) {
    // 页面初始化时刻
    on<InitEvent>(_init);

    // 计数器自增
    on<CounterIncrementEvent>(_increment);

    //加多个
    on<CounterMinusEvent>(_minus);
  }

  void _init(InitEvent event, Emitter<CounterBlocState> emit) async {
    emit(state.clone());
  }

  void _increment(CounterBlocEvent event, Emitter<CounterBlocState> emit) {
    state.count++;
    emit(state.clone());
  }

  void _minus(CounterBlocEvent event, Emitter<CounterBlocState> emit) {
    state.count = state.count - 2;
    emit(state.clone());
  }
}
