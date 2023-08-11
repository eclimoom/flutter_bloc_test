class CounterBlocState {

  // 定义属性
  late int count;

  CounterBlocState init() {
    return CounterBlocState()..count = 0;
  }

  CounterBlocState clone() {
    return CounterBlocState()..count = count;
  }
}
