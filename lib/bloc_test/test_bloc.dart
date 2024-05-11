/*
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {

  TestBloc() : super(TestInitial(0)) {
    on<TestEvent>((event, emit) {
      switch(event){
        case TestEvent.countDown:
          emit(TestInitial(2));
      }
    });
  }
}
*/
