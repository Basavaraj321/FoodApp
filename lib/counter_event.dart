import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum EventStatus { INCREMENT, DECREMENT }

class CounterEvent {
  final int value;
  final EventStatus status;

  const CounterEvent({required this.value, required this.status});
}

class CounterBLoC extends Bloc<CounterEvent, int> {
  CounterBLoC(int initialState) : super(initialState);

  int get initialState => 0;

  @override
  Stream<int> mapEventToState(event) async* {
    if (event.status == EventStatus.INCREMENT) {
      yield state + event.value;
    } else if (event.status == EventStatus.DECREMENT) {
      yield state - event.value;
    }
  }
}