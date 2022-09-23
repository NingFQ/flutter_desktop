import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../../../data/Option_entity.dart';
import '../../../data/Question_entity.dart';
import '../../../model/currentQuestionInfo.dart';
import '../../../model/page_jump_method.dart';
import '../../../model/pub_widget/bottom_ operation.dart';
import 'calculation_dialog1.dart';
import 'calculation_dialog2.dart';

class CalculationQuestionPage1 extends StatefulWidget {
  final arguments;
  const CalculationQuestionPage1({super.key, this.arguments});

  @override
  State<CalculationQuestionPage1> createState() =>
      _CalculationQuestionPage1State();
}

class _CalculationQuestionPage1State extends State<CalculationQuestionPage1> {
  /// 题目
  late QuestionEntity questionData;

  /// 题目选项
  late List<OptionEntity> optionList = [];

  /// 当前问题下标
  late int questionIndex;

  /// 当前选中的选项code
  late int currentoptionCode;

  @override
  void initState() {
    questionIndex = widget.arguments['index'] ?? 0;
    questionData =
        QuestionEntity().fromJson(Questioninfo.currentQuestion![questionIndex]);
    currentoptionCode = questionData.checkedCode ?? 0;
    optionList = questionData.option!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第 ${questionData.questionId} 题'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${questionData.questionId}、${questionData.questionName}',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40),
                alignment: Alignment.centerLeft,
                height: 80,
                child: const Text(
                  '*本题目为特殊题目，请先选择按钮以开始',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: optionList
                      .asMap()
                      .keys
                      .map((index) => buildOptionItem(optionList[index], index))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomOperation(questionIndex: questionIndex),
    );
  }

  Widget buildOptionItem(OptionEntity item, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 4,
          )
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          // 如果选择非水下穿越
          if (index == 0) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('提示'),
                  content: const Text('请先选择管道类型'),
                  actionsAlignment: MainAxisAlignment.spaceAround,
                  actionsPadding: const EdgeInsets.only(bottom: 30),
                  actions: <Widget>[
                    ElevatedButton(
                      child: const Text('跨越段或露管段'),
                      onPressed: () {
                        /// 选择选项后 选中样式改变 改变题目数据里的值
                        setState(() {
                          currentoptionCode = 0;
                          // 标记已做
                          Questioninfo.currentQuestion![questionIndex]
                              ['isDone'] = 1;
                          // 标记此题得分 跨越段或露管段直接零分
                          Questioninfo.currentQuestion![questionIndex]
                              ['questionScore'] = 0;
                          // 标记此题选中的选项
                          Questioninfo.currentQuestion![questionIndex]
                              ['checkedCode'] = item.optionCode;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                    ElevatedButton(
                      child: const Text('埋地段'),
                      onPressed: () {
                        Navigator.of(context).pop();
                        SmartDialog.show(
                          alignment: Alignment.center,
                          clickMaskDismiss: false,
                          maskColor: const Color.fromRGBO(0, 0, 0, 0.35),
                          builder: (_) {
                            return const CalculationDialog1();
                          },
                        );
                      },
                    ),
                  ],
                );
              },
            );
          } else {
            SmartDialog.show(
              alignment: Alignment.center,
              clickMaskDismiss: false,
              maskColor: const Color.fromRGBO(0, 0, 0, 0.35),
              builder: (_) {
                return const CalculationDialog2();
              },
            );
          }
        },
        child: Text(
          '${item.optionName}',
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
