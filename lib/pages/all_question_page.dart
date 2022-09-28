import 'package:flutter/material.dart';
import 'package:flutter_desktop/model/local_info/currentQuestionInfo.dart';

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
      "index": 1,
    },
    {
      "name": "腐蚀评分",
      "index": 2,
    },
    {
      "name": "设备(装置)及操作的评分",
      "index": 3,
    },
    {
      "name": "管道本质安全质量的评分",
      "index": 4,
    },
  ];

  List currentQuestionList = [
    Questioninfo.thirdPartyDamage,
    Questioninfo.corrode,
    Questioninfo.equipmentOperation,
    Questioninfo.tubeEssence
  ];

  /// 当前选择的目录
  int currentIndex = 1;

  /// 当前的题目列表
  // List currentQuestionList = [];

  @override
  void initState() {
    super.initState();
  }

  void switchCatalogue(int i) {
    currentIndex = i;
    setState(() {});
  }

  // void buildQuestionList() {
  //   switch (currentIndex) {
  //     case 1:
  //       currentQuestionList = Questioninfo.thirdPartyDamage!;
  //       break;
  //     case 2:
  //       currentQuestionList = Questioninfo.corrode!;
  //       break;
  //     case 3:
  //       currentQuestionList = Questioninfo.equipmentOperation!;
  //       break;
  //     case 4:
  //       currentQuestionList = Questioninfo.tubeEssence!;
  //       break;
  //   }
  // }

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
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFC),
                border: Border(
                  right: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.5),
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
                              Text('${e["name"]}'),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.orange,
                child: SingleChildScrollView(
                  child: Column(
                    children: currentQuestionList[currentIndex - 1]
                        .map<Widget>((e) => Text('${e["questionName"]}'))
                        .toList(),
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
  Widget buildSingleQuestion(Map singleQuestion, int index) {
    return Container();
  }
}
