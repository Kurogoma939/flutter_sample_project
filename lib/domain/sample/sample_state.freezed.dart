// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SampleState {
  List<SampleModel> get sampleList => throw _privateConstructorUsedError;
  AsyncValue<List<SampleModel>> get futureSampleList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleStateCopyWith<SampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStateCopyWith<$Res> {
  factory $SampleStateCopyWith(
          SampleState value, $Res Function(SampleState) then) =
      _$SampleStateCopyWithImpl<$Res>;
  $Res call(
      {List<SampleModel> sampleList,
      AsyncValue<List<SampleModel>> futureSampleList});
}

/// @nodoc
class _$SampleStateCopyWithImpl<$Res> implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  final SampleState _value;
  // ignore: unused_field
  final $Res Function(SampleState) _then;

  @override
  $Res call({
    Object? sampleList = freezed,
    Object? futureSampleList = freezed,
  }) {
    return _then(_value.copyWith(
      sampleList: sampleList == freezed
          ? _value.sampleList
          : sampleList // ignore: cast_nullable_to_non_nullable
              as List<SampleModel>,
      futureSampleList: futureSampleList == freezed
          ? _value.futureSampleList
          : futureSampleList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SampleModel>>,
    ));
  }
}

/// @nodoc
abstract class _$$_SampleStateCopyWith<$Res>
    implements $SampleStateCopyWith<$Res> {
  factory _$$_SampleStateCopyWith(
          _$_SampleState value, $Res Function(_$_SampleState) then) =
      __$$_SampleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SampleModel> sampleList,
      AsyncValue<List<SampleModel>> futureSampleList});
}

/// @nodoc
class __$$_SampleStateCopyWithImpl<$Res> extends _$SampleStateCopyWithImpl<$Res>
    implements _$$_SampleStateCopyWith<$Res> {
  __$$_SampleStateCopyWithImpl(
      _$_SampleState _value, $Res Function(_$_SampleState) _then)
      : super(_value, (v) => _then(v as _$_SampleState));

  @override
  _$_SampleState get _value => super._value as _$_SampleState;

  @override
  $Res call({
    Object? sampleList = freezed,
    Object? futureSampleList = freezed,
  }) {
    return _then(_$_SampleState(
      sampleList: sampleList == freezed
          ? _value._sampleList
          : sampleList // ignore: cast_nullable_to_non_nullable
              as List<SampleModel>,
      futureSampleList: futureSampleList == freezed
          ? _value.futureSampleList
          : futureSampleList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<SampleModel>>,
    ));
  }
}

/// @nodoc

class _$_SampleState implements _SampleState {
  const _$_SampleState(
      {final List<SampleModel> sampleList = const <SampleModel>[],
      this.futureSampleList = const AsyncValue.loading()})
      : _sampleList = sampleList;

  final List<SampleModel> _sampleList;
  @override
  @JsonKey()
  List<SampleModel> get sampleList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sampleList);
  }

  @override
  @JsonKey()
  final AsyncValue<List<SampleModel>> futureSampleList;

  @override
  String toString() {
    return 'SampleState(sampleList: $sampleList, futureSampleList: $futureSampleList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SampleState &&
            const DeepCollectionEquality()
                .equals(other._sampleList, _sampleList) &&
            const DeepCollectionEquality()
                .equals(other.futureSampleList, futureSampleList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sampleList),
      const DeepCollectionEquality().hash(futureSampleList));

  @JsonKey(ignore: true)
  @override
  _$$_SampleStateCopyWith<_$_SampleState> get copyWith =>
      __$$_SampleStateCopyWithImpl<_$_SampleState>(this, _$identity);
}

abstract class _SampleState implements SampleState {
  const factory _SampleState(
      {final List<SampleModel> sampleList,
      final AsyncValue<List<SampleModel>> futureSampleList}) = _$_SampleState;

  @override
  List<SampleModel> get sampleList;
  @override
  AsyncValue<List<SampleModel>> get futureSampleList;
  @override
  @JsonKey(ignore: true)
  _$$_SampleStateCopyWith<_$_SampleState> get copyWith =>
      throw _privateConstructorUsedError;
}
