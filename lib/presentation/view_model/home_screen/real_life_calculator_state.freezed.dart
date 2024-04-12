// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_life_calculator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RealLifeCalculatorState _$RealLifeCalculatorStateFromJson(
    Map<String, dynamic> json) {
  return _RealLifeCalculatorState.fromJson(json);
}

/// @nodoc
mixin _$RealLifeCalculatorState {
  String get bmiResult => throw _privateConstructorUsedError;
  String get pyung => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RealLifeCalculatorStateCopyWith<RealLifeCalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealLifeCalculatorStateCopyWith<$Res> {
  factory $RealLifeCalculatorStateCopyWith(RealLifeCalculatorState value,
          $Res Function(RealLifeCalculatorState) then) =
      _$RealLifeCalculatorStateCopyWithImpl<$Res, RealLifeCalculatorState>;
  @useResult
  $Res call({String bmiResult, String pyung});
}

/// @nodoc
class _$RealLifeCalculatorStateCopyWithImpl<$Res,
        $Val extends RealLifeCalculatorState>
    implements $RealLifeCalculatorStateCopyWith<$Res> {
  _$RealLifeCalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bmiResult = null,
    Object? pyung = null,
  }) {
    return _then(_value.copyWith(
      bmiResult: null == bmiResult
          ? _value.bmiResult
          : bmiResult // ignore: cast_nullable_to_non_nullable
              as String,
      pyung: null == pyung
          ? _value.pyung
          : pyung // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RealLifeCalculatorStateImplCopyWith<$Res>
    implements $RealLifeCalculatorStateCopyWith<$Res> {
  factory _$$RealLifeCalculatorStateImplCopyWith(
          _$RealLifeCalculatorStateImpl value,
          $Res Function(_$RealLifeCalculatorStateImpl) then) =
      __$$RealLifeCalculatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bmiResult, String pyung});
}

/// @nodoc
class __$$RealLifeCalculatorStateImplCopyWithImpl<$Res>
    extends _$RealLifeCalculatorStateCopyWithImpl<$Res,
        _$RealLifeCalculatorStateImpl>
    implements _$$RealLifeCalculatorStateImplCopyWith<$Res> {
  __$$RealLifeCalculatorStateImplCopyWithImpl(
      _$RealLifeCalculatorStateImpl _value,
      $Res Function(_$RealLifeCalculatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bmiResult = null,
    Object? pyung = null,
  }) {
    return _then(_$RealLifeCalculatorStateImpl(
      bmiResult: null == bmiResult
          ? _value.bmiResult
          : bmiResult // ignore: cast_nullable_to_non_nullable
              as String,
      pyung: null == pyung
          ? _value.pyung
          : pyung // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RealLifeCalculatorStateImpl implements _RealLifeCalculatorState {
  const _$RealLifeCalculatorStateImpl({this.bmiResult = '', this.pyung = ''});

  factory _$RealLifeCalculatorStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealLifeCalculatorStateImplFromJson(json);

  @override
  @JsonKey()
  final String bmiResult;
  @override
  @JsonKey()
  final String pyung;

  @override
  String toString() {
    return 'RealLifeCalculatorState(bmiResult: $bmiResult, pyung: $pyung)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealLifeCalculatorStateImpl &&
            (identical(other.bmiResult, bmiResult) ||
                other.bmiResult == bmiResult) &&
            (identical(other.pyung, pyung) || other.pyung == pyung));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bmiResult, pyung);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RealLifeCalculatorStateImplCopyWith<_$RealLifeCalculatorStateImpl>
      get copyWith => __$$RealLifeCalculatorStateImplCopyWithImpl<
          _$RealLifeCalculatorStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealLifeCalculatorStateImplToJson(
      this,
    );
  }
}

abstract class _RealLifeCalculatorState implements RealLifeCalculatorState {
  const factory _RealLifeCalculatorState(
      {final String bmiResult,
      final String pyung}) = _$RealLifeCalculatorStateImpl;

  factory _RealLifeCalculatorState.fromJson(Map<String, dynamic> json) =
      _$RealLifeCalculatorStateImpl.fromJson;

  @override
  String get bmiResult;
  @override
  String get pyung;
  @override
  @JsonKey(ignore: true)
  _$$RealLifeCalculatorStateImplCopyWith<_$RealLifeCalculatorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
