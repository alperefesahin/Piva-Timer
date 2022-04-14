import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization_state.dart';
part 'localization_cubit.freezed.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(const LocalizationState.initial());

  void updateAppLanguage() {
    emit(state.copyWith(appLanguage: state.appLanguage.languageCode == "en" ? const Locale("tr") : const Locale("en")));
  }
}
