import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offline_timer_state.dart';
part 'offline_timer_cubit.freezed.dart';

class OfflineTimerCubit extends Cubit<OfflineTimerState> {
  OfflineTimerCubit() : super(const OfflineTimerState.initial());
}
