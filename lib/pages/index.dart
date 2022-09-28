import 'package:flutter/material.dart';

import '../model/local_info/currentQuestionInfo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


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
                          setCurrentQuestion(e["pipelineType"]);
                          // Questioninfo.currentQuestionCode = e['pipelineType'];
                          // Navigator.pushNamed(context, 'chooseQuestionPart');
                          Navigator.pushNamed(context, 'allQuestionPage');
                        },
                        child: Text(
                          '${e['pipelineName']}',
                          style: const TextStyle(
                            fontSize: 14,
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
