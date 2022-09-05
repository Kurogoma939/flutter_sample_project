import 'package:sample_architecture/infrastructure/model/sample/sample_model.dart';

class SampleDataSource {
  /// 3秒遅延させて、ダミーのデータを返す
  Future<List<SampleModel>> fetchSampleModelList() async {
    await Future.delayed(const Duration(seconds: 3));
    return [
      const SampleModel(
        id: '1',
        name: 'サンプルラベル1',
      ),
      const SampleModel(
        id: '2',
        name: 'サンプルラベル2',
      ),
      const SampleModel(
        id: '3',
        name: 'サンプルラベル3',
      ),
      const SampleModel(
        id: '4',
        name: 'サンプルラベル4',
      ),
      const SampleModel(
        id: '5',
        name: 'サンプルラベル5',
      ),
    ];
  }
}
