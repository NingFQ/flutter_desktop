import 'package:flutter/material.dart';
import '../model/currentQuestionInfo.dart';
import '../model/page_jump_method.dart';

class AllQuestionPage extends StatefulWidget {
  const AllQuestionPage({Key? key}) : super(key: key);

  @override
  State<AllQuestionPage> createState() => _AllQuestionPageState();
}

class _AllQuestionPageState extends State<AllQuestionPage> {
  /// 已做题目数量
  int get idDoneCount =>
      Questioninfo.currentQuestion!.where((item) => item["isDone"] == 1).length;

  /// 未做题目数量
  int get noDoneCount =>
      Questioninfo.currentQuestion!.where((item) => item["isDone"] != 1).length;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '全部题目  (共${Questioninfo.currentQuestionCount}题,已做$idDoneCount道,未做$noDoneCount道)'),
        actions: [
          Container(
            height: 80,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () => PageJumpMethod.jumpPage(context, 1),
              child: const Text(
                '重新选择试卷',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: 120,
            height: 80,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                var allDoned = Questioninfo.currentQuestion
                    ?.every((item) => item["isDone"] == 1);
                print(allDoned);
              },
              child: const Text(
                '提交',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 8,
              )
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: Questioninfo.currentQuestion!
                  .asMap()
                  .keys
                  .map<Widget>(
                    (index) => buildSingleQuestion(
                        Questioninfo.currentQuestion![index], index),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  /// 单个题目
  Widget buildSingleQuestion(Map singleQuestion, int index) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () => PageJumpMethod.jumpToQuestion(context, 3, index),
            child: Text(
              '${singleQuestion['questionId']}：${singleQuestion['questionName']}',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Icon(
            Icons.check_circle,
            color: singleQuestion['isDone'] == 0 ? Colors.red : Colors.green,
            size: 18,
          ),
          const SizedBox(width: 10),
          Visibility(
            visible: singleQuestion['isDone'] != 0,
            child: Text('得分：${singleQuestion['questionScore'] ?? 0}'),
          ),
        ],
      ),
    );
  }
}
