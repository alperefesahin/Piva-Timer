part of 'localization_cubit.dart';

@freezed
class LocalizationState with _$LocalizationState {
  const factory LocalizationState.initial({
    @Default(Locale("en")) Locale appLanguage,
  }) = _Initial;
}
