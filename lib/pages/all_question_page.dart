import 'package:flutter/material.dart';
import 'package:flutter_desktop/model/local_info/currentQuestionInfo.dart';

import '../data/Option_entity.dart';
import '../data/Question_entity.dart';
import '../model/questions/failure_probability/part_one/part_one_type1234.dart';

class AllQuestionPage extends StatefulWidget {
  const AllQuestionPage({Key? key}) : super(key: key);

  @override
  State<AllQuestionPage> createState() => _AllQuestionPageState();
}

class _AllQuestionPageState extends State<AllQuestionPage> {
  /// 左侧目录列表
  List catalogueList = [
    {
      "name": "第三方破坏评分",
      "index": 0,
    },
    {
      "name": "腐蚀评分",
      "index": 1,
    },
    {
      "name": "设备(装置)及操作的评分",
      "index": 2,
    },
    {
      "name": "管道本质安全质量的评分",
      "index": 3,
    },
  ];

  List currentQuestionList = [
    Questioninfo.thirdPartyDamage,
    Questioninfo.corrode,
    Questioninfo.equipmentOperation,
    Questioninfo.tubeEssence
  ];

  /// 当前选择的目录
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  ///
  void switchCatalogue(int i) {
    currentIndex = i;
    setState(() {});
  }

  /// 选择某个选项
  void chooseOption(int questionIndex, OptionEntity option) {
    /// 如果是第三方破坏评分
    if (currentIndex == 0) {
      if (Questioninfo.currentPipelineType == 1 ||
          Questioninfo.currentPipelineType == 2 ||
          Questioninfo.currentPipelineType == 3 ||
          Questioninfo.currentPipelineType == 4) {
        fPPartOneType1[questionIndex]['isDone'] = 1;
        fPPartOneType1[questionIndex]['questionScore'] = option.optionScore;
        fPPartOneType1[questionIndex]['checkedCode'] = option.optionCode;
      }
    } else if (currentIndex == 1) {
      /// 腐蚀评分
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('全部题目'),
        actions: [
          Container(
            height: 80,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () => {},
              child: const Text(
                '重新选择管道类型',
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
              onPressed: () {},
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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            /// 题目目录
            Container(
              width: 200,
              decoration: const BoxDecoration(
                color: Color(0xFFF9FAFC),
                border: Border(
                  right: BorderSide(
                    width: 1,
                    color: Color(0xFFD1D1D1),
                  ),
                ),
              ),
              child: Column(
                children: catalogueList
                    .map(
                      (e) => GestureDetector(
                        onTap: () => switchCatalogue(e["index"]),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 80,
                          color: currentIndex == e["index"]
                              ? Colors.white
                              : Colors.transparent,
                          child: Row(
                            children: [
                              Container(
                                width: 6,
                                height: 20,
                                margin: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(6)),
                                  color: currentIndex == e["index"]
                                      ? const Color(0xFFFED420)
                                      : Colors.transparent,
                                ),
                              ),
                              Text(
                                '${e["name"]}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),

            /// 题目列表
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: currentQuestionList[currentIndex]
                          .asMap()
                          .keys
                          .map<Widget>(
                            (questionIndex) => buildSingleQuestion(
                              currentQuestionList[currentIndex][questionIndex],
                              questionIndex,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 单个题目
  Widget buildSingleQuestion(
    Map<String, dynamic> singleQuestion,
    int questionIndex,
  ) {
    QuestionEntity enity = QuestionEntity().fromJson(singleQuestion);
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${questionIndex + 1}、${enity.questionName}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  height: 1,
                ),
              ),
              const SizedBox(width: 10),
              Visibility(
                visible: enity.isDone == 1,
                child: const Icon(
                  Icons.done,
                  color: Colors.green,
                  size: 16,
                ),
              ),
              Text(
                '${enity.questionScore ?? ''}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  height: 1,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: enity.option!
                  .asMap()
                  .keys
                  .map(
                    (optIndex) => buildSingleOption(
                      enity,
                      questionIndex,
                      optIndex,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  /// 单个选项
  Widget buildSingleOption(
    QuestionEntity question,
    int questionIndex,
    int optIndex,
  ) {
    OptionEntity optionEntity = question.option![optIndex];
    return GestureDetector(
      onTap: () => chooseOption(questionIndex, optionEntity),
      child: Container(
        alignment: Alignment.centerLeft,
        height: 30,
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${optionEntity.optionName}(${optionEntity.optionScore ?? ''}分)',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
                height: 1,
              ),
            ),
            const SizedBox(width: 10),
            Visibility(
              visible: optionEntity.optionCode == question.checkedCode,
              child: const Icon(
                Icons.done,
                color: Colors.green,
                size: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
