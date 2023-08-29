import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/Cubit/counter_cubit.dart';
import 'package:points_counter/Cubit/counter_states.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });
  int teamAPoints = 0;

  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      builder: (context, stat) {
        return Scaffold(
          backgroundColor: const Color(0xfffafafa),
          appBar: AppBar(
            backgroundColor: const Color(0xffff9800),
            centerTitle: true,
            title: const Text(
              'Points Counter',
              style: TextStyle(
                color: Color(0xfffafafa),
                fontSize: 24,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: const TextStyle(
                            fontSize: 130,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffff9800),
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(
                            teamName: 'A',
                            buttonNumber: 1,
                          );
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xfffafafa),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffff9800),
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(
                            teamName: 'A',
                            buttonNumber: 2,
                          );
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xfffafafa),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffff9800),
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(
                            teamName: 'A',
                            buttonNumber: 3,
                          );
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xfffafafa),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      width: 40,
                      color: Color.fromARGB(255, 199, 199, 199),
                      thickness: 2,
                      indent: 60,
                      endIndent: 60,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: const TextStyle(
                            fontSize: 130,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffff9800),
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(
                            teamName: 'B',
                            buttonNumber: 1,
                          );
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xfffafafa),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffff9800),
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(
                            teamName: 'B',
                            buttonNumber: 2,
                          );
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xfffafafa),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffff9800),
                          minimumSize: const Size(120, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).teamIncrement(
                            teamName: 'B',
                            buttonNumber: 3,
                          );
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xfffafafa),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffff9800),
                  minimumSize: const Size(120, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).teamsReset();
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xfffafafa),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, stat) {
        if (stat is CounterTeamIncrementInitialStat) {
          print(CounterTeamIncrementInitialStat);
        } else if (stat is CounterTeamAIncrementStat) {
          print(CounterTeamAIncrementStat);
        } else if (stat is CounterTeamBIncrementStat) {
          print(CounterTeamBIncrementStat);
        } else if (stat is CounterTeamResetStat) {
          print(CounterTeamResetStat);
        }
      },
    );
  }
}
