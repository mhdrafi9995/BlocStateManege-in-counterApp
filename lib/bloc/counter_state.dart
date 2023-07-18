part of 'counter_bloc.dart';

class CounterState {
  int count;

  CounterState({required this.count});
}

class CounterInizile extends CounterState {
  CounterInizile() : super(count: 0);
}
