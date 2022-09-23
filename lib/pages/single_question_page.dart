import 'package:flutter/material.dart';
import 'package:flutter_desktop/data/Question_entity.dart';

import '../data/Option_entity.dart';
import '../model/currentQuestionInfo.dart';
import '../model/page_jump_method.dart';
import '../model/pub_widget/bottom_ operation.dart';

class SingleQuestionPage extends StatefulWidget {
  final arguments;
  const SingleQuestionPage({Key? key, this.arguments}) : super(key: key);

  @override
  State<SingleQuestionPage> createState() => _SingleQuestionPageState();
}

class _SingleQuestionPageState extends State<SingleQuestionPage> {
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
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 30),
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
      margin: const EdgeInsets.symmetric(vertical: 10),
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
      child: RadioListTile(
        title: Text(
          '${item.optionName}(${item.optionScore}分)',
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        value: item.optionCode,
        groupValue: currentoptionCode,
        onChanged: (value) {
          setState(() {
            /// 选择选项后 选中样式改变 改变题目数据里的值
            currentoptionCode = value!;
            // 标记当前试卷该题目已做
            Questioninfo.currentQuestion![questionIndex]['isDone'] = 1;
            // 标记此题得分
            Questioninfo.currentQuestion![questionIndex]['questionScore'] =
                item.optionScore;
            // 标记此题选中的选项
            Questioninfo.currentQuestion![questionIndex]['checkedCode'] =
                item.optionCode;
          });
        },
      ),
    );
  }
}
