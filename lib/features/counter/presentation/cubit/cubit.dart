import 'package:counter_bloc/features/counter/presentation/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit(): super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of<CounterCubit>(context);

  int counter =0;

  void Increment(){
    counter++;
    emit(CounterIncrementState());
}

  void Decrement(){
    if(counter>0){
      counter--;

    }
    emit(CounterDecrementState());
  }
}