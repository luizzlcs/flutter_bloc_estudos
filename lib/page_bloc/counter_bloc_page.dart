import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_estudos/page_bloc/bloc/counter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Couter Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Counter: ${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrement());
                  },
                  icon: const Icon(Icons.add),
                  label: const Text(''),
                ),
                const SizedBox(
                  height: 30,
                  width: 5,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterDecrement());
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text(''),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
