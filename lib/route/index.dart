import 'package:flutter/material.dart';
import 'package:flutter_desktop/pages/all_question_page.dart';
import 'package:flutter_desktop/pages/calculation_question/calculation1/calculation_question_page1.dart';
import 'package:flutter_desktop/pages/choose_module/choose_question_part.dart';

import '../main.dart';

class AppRoutes {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  Map<String, WidgetBuilder> appRoutes = {
    /// 首页
    '/': (context, {arguments}) => const MyApp(),

    /// 选择失效后果和失效可能性得分
    'chooseQuestionPart': (context, {arguments}) => const ChooseQuestionPart(),

    /// 全部问题页
    'allQuestionPage': (context, {arguments}) => const AllQuestionPage(),

    /// 计算问题 埋深
    'calculationQuestionPage1': (context, {arguments}) =>
        CalculationQuestionPage1(arguments: arguments),
  };
  Map<String, WidgetBuilder> otherRoutes = {};
  AppRoutes() {
    appRoutes.addAll(otherRoutes);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    // 统一处理
    final String name = settings.name ?? '';
    final Function pageContentBuilder = appRoutes[name] as Function;
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          settings: RouteSettings(name: name),
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          settings: RouteSettings(name: name),
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
}
