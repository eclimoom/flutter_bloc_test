abstract class CounterBlocEvent {}

class InitEvent extends CounterBlocEvent {}

class CounterIncrementEvent extends CounterBlocEvent {}
class CounterMinusEvent extends CounterBlocEvent {}