import 'dart:developer';

import 'package:blocmethod/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(CouunterIncrement());
                // context.read<CounterBloc>().add(Increment());
                // BlocProvider.of<CounterBloc>(context).add(Increment());
                log("onPressed Block");
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                log("decrement");
                BlocProvider.of<CounterBloc>(context).add(CounterDecrement());
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Bloc Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Count",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(
                    '${state.count}',
                    style: const TextStyle(fontSize: 60),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
