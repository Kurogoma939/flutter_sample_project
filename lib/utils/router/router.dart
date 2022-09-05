// ボトムナビゲーションを非表示にしたいルートパスを指定
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_architecture/presentation/sample/sample_home_page.dart';
import 'package:sample_architecture/presentation/sample_detail/sample_detail_page.dart';
import 'package:sample_architecture/presentation/splash/splash_page.dart';
import 'package:sample_architecture/utils/router/slide_transitions_builder.dart';

const denyShowBNBList = [
  SplashPage.routePath,
];

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: SplashPage.routePath,
  // navigatorBuilder: (context, state, child) {
  //   // BottomNavigation非表示リストの判定
  //   final hasBottomNavigation = denyShowBNBList
  //       .where((element) => state.subloc.startsWith(element))
  //       .isEmpty;

  //   return Navigator(
  //     onPopPage: (router, dynamic __) => false,
  //     pages: [
  //       MaterialPage<Widget>(
  //         child: YoriaiBottomNavigationBar(
  //           showBottomNavigation: hasBottomNavigation,
  //           child: child,
  //         ),
  //       ),
  //     ],
  //   );
  // },
  // // URLリクエストエラー時
  // errorBuilder: (context, state) {
  //   return 404ErrorPage();
  // },
  routes: [
    /// 起動動線
    GoRoute(
      name: SplashPage.routeName,
      path: SplashPage.routePath,
      builder: (_, __) => const SplashPage(),
    ),

    /// アプリホーム
    GoRoute(
        name: SampleHomePage.routeName,
        path: SampleHomePage.routePath,
        pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const SampleHomePage(),
            ),
        routes: [
          // ネストかつアニメーション込みの画面遷移
          GoRoute(
            name: SampleDetailPage.routeName,
            path: SampleDetailPage.routePath,
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SampleDetailPage(),
              transitionDuration: const Duration(milliseconds: 300),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransitionBuilder().buildTransitions(
                  MaterialPageRoute(
                    builder: (context) => const SampleDetailPage(),
                  ),
                  context,
                  animation,
                  secondaryAnimation,
                  child,
                );
              },
            ),
          ),
        ]),
  ],
);
