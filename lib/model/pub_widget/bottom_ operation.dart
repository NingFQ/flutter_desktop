import 'package:flutter/material.dart';

import '../currentQuestionInfo.dart';
import '../page_jump_method.dart';

class BottomOperation extends StatelessWidget {
  final int questionIndex;
  const BottomOperation({super.key, required this.questionIndex});
  /// 上一题
  bool get isPre => questionIndex != 0;

  /// 下一题
  bool get isNext => questionIndex < Questioninfo.currentQuestionCount! - 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: isPre
                ? () {
                    PageJumpMethod.jumpToQuestion(context, 1, questionIndex);
                  }
                : null,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                isPre ? Colors.red : Colors.grey,
              ),
            ),
            child: const Text(
              '上一题',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              onPressed: () {
                PageJumpMethod.jumpPage(context, 2);
              },
              child: const Text(
                '全部题目',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: isNext
                ? () {
                    PageJumpMethod.jumpToQuestion(context, 2, questionIndex);
                  }
                : null,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                isNext ? Colors.green : Colors.grey,
              ),
            ),
            child: const Text(
              '下一题',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
