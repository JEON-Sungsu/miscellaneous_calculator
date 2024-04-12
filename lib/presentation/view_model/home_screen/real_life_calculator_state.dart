import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_life_calculator_state.freezed.dart';

part 'real_life_calculator_state.g.dart';

@freezed
class RealLifeCalculatorState with _$RealLifeCalculatorState {
  const factory RealLifeCalculatorState({
    @Default('') String bmiResult,
    @Default('') String pyung,
  }) = _RealLifeCalculatorState;

  factory RealLifeCalculatorState.fromJson(Map<String, Object?> json) =>
      _$RealLifeCalculatorStateFromJson(json);
}
