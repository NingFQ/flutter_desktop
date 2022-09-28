import 'package:flutter/material.dart';
import 'package:flutter_desktop/pages/choose_module/choose_module_dialog.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class ChooseQuestionPart extends StatefulWidget {
  const ChooseQuestionPart({Key? key}) : super(key: key);

  @override
  State<ChooseQuestionPart> createState() => _ChooseQuestionPartState();
}

class _ChooseQuestionPartState extends State<ChooseQuestionPart> {
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
                '请选择',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 40,
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    SmartDialog.show(
                      alignment: Alignment.center,
                      clickMaskDismiss: false,
                      maskColor: const Color.fromRGBO(0, 0, 0, 0.35),
                      builder: (_) {
                        return const ChooseModuleDialog();
                      },
                    );
                  },
                  child: const Text(
                    '失效可能性得分',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    '失效后果得分',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
