import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInizile()) {
    //! if method
    // on<CounterEvent>((event, emit) {
    // if (event is CouunterIncrement) {
    //   emit(CounterState(count: state.count + 1));
    // }
    // if (event is CounterDecrement) {
    //   emit(CounterState(count: state.count - 1));
    // }
    // });
    on<CouunterIncrement>(
        (event, emit) => emit(CounterState(count: state.count + 1)));

    on<CounterDecrement>(
        (event, emit) => emit(CounterState(count: state.count - 1)));
  }
}
