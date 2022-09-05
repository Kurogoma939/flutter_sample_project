import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_model.freezed.dart';

@freezed
class SampleModel with _$SampleModel {
  const factory SampleModel({
    required String id,
    required String name,
  }) = _SampleModel;
}
