import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_architecture/infrastructure/model/sample/sample_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'sample_state.freezed.dart';

@freezed
class SampleState with _$SampleState {
  const factory SampleState({
    @Default(<SampleModel>[]) List<SampleModel> sampleList,
    @Default(AsyncValue.loading())
        AsyncValue<List<SampleModel>> futureSampleList,
  }) = _SampleState;
}
