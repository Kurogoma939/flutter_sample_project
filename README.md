# 各レイヤの方針

### presentation
- 基本的にhooksを扱う場合以外状態を持たない
- 画面やウィジェットの出し分けが必要な場合はStateNotifierの状態として保持

### domain/notifier
- 基本的にStateNotifierProvider.autoDisposeとして利用し、StateNotifierのライフサイクルを各ページのライフサイクルと一致させる
- 状態はStateクラスに持る

### domain/service
- 基本的に状態を持たない
- ビジネスロジックを記述する
- APIから取得した状態の保持はRepositoryで行う
- Provider.autoDisposeを基本的に利用し、notifier（presentation）側とライフサイクルを一致させる

### infrastructure/repository
- ユースケースや要求に応じて状態を持つ場合がある
- dataSourceからの取得値を状態（cache）として変数で保持する
- コンストラクタの永続化はProviderで定義することで実現する

### infrastructure/dataSource
- 状態を持たない
- 通信により取得した値のキャッシュはrepositoryで行う


## 保存例
| カテゴリ | 使用例 | 状態の保存場所 |
| --------- | --------- |--------- |
| 画面のコンポーネントが持つ状態 | 検索のソート条件 | stateで保持。前回の条件を保持するといった場合はRepositoryなどでキャッシュとして保持 |
| 画面全体が持つ状態 | ユーザー情報全体 | Repository層のキャッシュ |
| 複数の画面にまたがる状態  | 実行中のタスクID | GoRouterのqueryParamsで継承 |
| アプリ全体で持つ状態 | 初回起動フラグ | SharedPreferenceによる保持 |
