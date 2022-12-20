import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {

    // Add
    on<CounterEvent_Add>((event, emit) {
      emit(state.copyWith(counter: state.counter+1));
    });

    // Remove
    on<CounterEvent_Add>((event, emit) {
      emit(state.copyWith(counter: state.counter-1));
    });
  }
}
