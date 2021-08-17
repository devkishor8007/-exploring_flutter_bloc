import 'package:explore_flutter_bloc/bloc_cubit_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Cubit"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
            child: const Text(
              "+",
              textScaleFactor: 2,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
            child: const Text(
              "-",
              textScaleFactor: 2,
            ),
          ),
        ],
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Text(
              "Value : $state",
              textScaleFactor: 1.6,
            ),
          );
        },
      ),
    );
  }
}
