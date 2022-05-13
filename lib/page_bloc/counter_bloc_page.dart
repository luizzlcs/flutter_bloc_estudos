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
                return Stack(children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 211, 208, 208),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${state.counter}',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                  ),
                ]);
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    shadowColor: Colors.red,
                    primary: Color.fromARGB(255, 76, 163, 76),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrement());
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  height: 30,
                  width: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 8,
                    shadowColor: Colors.red,
                    primary: Color.fromARGB(255, 76, 163, 76),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterDecrement());
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
