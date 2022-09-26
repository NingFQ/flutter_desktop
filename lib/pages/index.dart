import 'package:flutter/material.dart';

import '../model/currentQuestionInfo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<Map> pipelineType = [
    {
      "pipelineName": "输气管道",
      "pipelineType": PipeLineType.pipeLineTypeOne,
    },
    {
      "pipelineName": "输油管道",
      "pipelineType": PipeLineType.pipeLineTypeTwo,
    },
    {
      "pipelineName": "集气管道",
      "pipelineType": PipeLineType.pipeLineTypeThree,
    },
    {
      "pipelineName": "集油管道",
      "pipelineType": PipeLineType.pipeLineTypeFour,
    },
    {
      "pipelineName": "输送天然气、液化气介质的城市燃气管道",
      "pipelineType": PipeLineType.pipeLineTypeFive,
    },
    {
      "pipelineName": "输送人工煤气介质的城市燃气管道",
      "pipelineType": PipeLineType.pipeLineTypeSix,
    },
    {
      "pipelineName": "输送腐蚀性液体介质的工业管道",
      "pipelineType": PipeLineType.pipeLineTypeSeven,
    },
  ];

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: const Text(
                '请选择管道类型开始',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: pipelineType
                  .map(
                    (e) => Container(
                      height: 40,
                      margin: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          // Questioninfo.currentQuestion = setCurrentQuestion(1)!;
                          // Navigator.pushNamed(context, 'allQuestionPage');
                        },
                        child: Text(
                          '${e['pipelineName']}',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
