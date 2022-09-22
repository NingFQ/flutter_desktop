import 'package:flutter/material.dart';

import '../model/currentQuestionInfo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              '请选择类型开始',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Wrap(
              runSpacing: 80,
              spacing: 100,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Questioninfo.currentQuestion = setCurrentQuestion(1)!;
                    Navigator.pushNamed(context, 'allQuestionPage');
                  },
                  child: Container(
                    width: 200,
                    height: 80,
                    alignment: Alignment.center,
                    child: const Text(
                      '试卷一(钢管)',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Questioninfo.currentQuestion = setCurrentQuestion(2)!;
                    Navigator.pushNamed(context, 'allQuestionPage');
                  },
                  child: Container(
                    width: 200,
                    height: 80,
                    alignment: Alignment.center,
                    child: const Text(
                      '试卷二(钢管)',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Questioninfo.currentQuestion = setCurrentQuestion(3)!;
                    Navigator.pushNamed(context, 'allQuestionPage');
                  },
                  child: Container(
                    width: 200,
                    height: 80,
                    alignment: Alignment.center,
                    child: const Text(
                      '试卷三(钢管)',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Questioninfo.currentQuestion = setCurrentQuestion(4)!;
                    Navigator.pushNamed(context, 'allQuestionPage');
                  },
                  child: Container(
                    width: 200,
                    height: 80,
                    alignment: Alignment.center,
                    child: const Text(
                      '试卷四(PE管)',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
