import 'package:flutter/material.dart';
import '../pages/all_question_page.dart';
import '../pages/calculation_question/calculation1/calculation_question_page1.dart';
import '../pages/index.dart';
import '../pages/single_question_page.dart';
import 'currentQuestionInfo.dart';

class PageJumpMethod {
  ///跳转至某个题目页面
  static void jumpToQuestion(BuildContext context, int jumpType, int index) {
    /**
   * jumpType 1 上一题 2 下一题 3 跳转某一题目
   * index 当前点击的问题的下标
   */
    late int jumpIndex;
    if (jumpType == 1) {
      jumpIndex = index - 1;
    } else if (jumpType == 2) {
      jumpIndex = index + 1;
    } else if (jumpType == 3) {
      jumpIndex = index;
    }

    switch (Questioninfo.currentQuestionCode) {

      /// 如果是第一套题目
      case 1:

        /// 如果是 埋深特殊题目
        if (jumpIndex == 7) {
          Navigator.pushAndRemoveUntil(
            context,
            PageRouteBuilder(
              settings: const RouteSettings(name: "calculationQuestionPage1"),
              pageBuilder: (
                BuildContext context,
                Animation animation,
                Animation secondaryAnimation,
              ) {
                return CalculationQuestionPage1(
                  arguments: {"index": jumpIndex},
                );
              },
            ),
            (route) => false,
          );
        } else {
          Navigator.pushAndRemoveUntil(
            context,
            PageRouteBuilder(
              settings: const RouteSettings(name: "singleQuestionPage"),
              pageBuilder: (
                BuildContext context,
                Animation animation,
                Animation secondaryAnimation,
              ) {
                return SingleQuestionPage(
                  arguments: {"index": jumpIndex},
                );
              },
            ),
            (route) => false,
          );
        }

        break;

      /// 如果是第二套题目
      case 2:
        break;

      /// 如果是第三套题目
      case 3:
        break;

      /// 如果是第四套题目
      case 4:
        break;
      default:
    }
  }

  /// 跳转至控制台页面
  static void jumpPage(BuildContext context, type, {int questionIndex = 0}) {
    /**
   * type
   * 1:重新选试卷
   * 2:全部题目页
   */
    switch (type) {
      case 1:
        Navigator.pushAndRemoveUntil(
          context,
          PageRouteBuilder(
            pageBuilder: (
              BuildContext context,
              Animation animation,
              Animation secondaryAnimation,
            ) {
              return const HomePage();
            },
          ),
          (route) => false,
        );
        break;
      case 2:
        Navigator.pushAndRemoveUntil(
          context,
          PageRouteBuilder(
            settings: const RouteSettings(name: "allQuestionPage"),
            pageBuilder: (
              BuildContext context,
              Animation animation,
              Animation secondaryAnimation,
            ) {
              return const AllQuestionPage();
            },
          ),
          (route) => false,
        );
        break;
      default:
    }
  }
}
