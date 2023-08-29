import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_states.dart';

class CounterCubit extends Cubit<CounterStates> {
  int teamAPoints = 0;

  int teamBPoints = 0;
  CounterCubit() : super(CounterTeamIncrementInitialStat());

  void teamIncrement({required String teamName, required int buttonNumber}) {
    if (teamName == 'A' || teamName == 'a') {
      teamAPoints += buttonNumber;
      emit(CounterTeamAIncrementStat());
    } else if (teamName == 'B' || teamName == 'b') {
      teamBPoints += buttonNumber;
      emit(CounterTeamBIncrementStat());
    }
  }

  void teamsReset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterTeamResetStat());
  }
}
