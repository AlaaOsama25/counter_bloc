import 'package:counter_bloc/features/counter/presentation/cubit/cubit.dart';
import 'package:counter_bloc/features/counter/presentation/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWidget extends StatelessWidget {
   CounterWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context){
        return CounterCubit();
      },
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: (){
                      CounterCubit.get(context).Increment();
                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(width: 20,),
                  Text('${CounterCubit.get(context).counter}',style: Theme.of(context).textTheme.headline4,),
                  SizedBox(width: 20,),
                  FloatingActionButton(
                    onPressed: (){
                      CounterCubit.get(context).Decrement();
                    },
                    child: Icon(Icons.minimize),

                  ),

                ],
              )
            ],
          );
        }),
    );
  }
}
