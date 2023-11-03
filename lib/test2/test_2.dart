import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum TestEvent{
  e1,
  e2,
}

class Test2 extends Bloc<TestEvent , int>{
  Test2(super.initialState){
    on((TestEvent event, emit) {
      if(event == TestEvent.e1){

      }
    });
  }

}