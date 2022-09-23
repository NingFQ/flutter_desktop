import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class CalculationDialog2 extends StatefulWidget {
  const CalculationDialog2({super.key});

  @override
  State<CalculationDialog2> createState() => _CalculationDialog2State();
}

class _CalculationDialog2State extends State<CalculationDialog2> {
  /// 可通航船底面至河底土壤深度或未通航水深
  int? result1;

  /// 相对河底土壤的管道埋深
  int? result2;

  /// 保护措施
  int? result3;

  void confirm() {
    print('埋深===${result1}===shuini ===${result2}====${result3}');
    if (result1 == null || result2 == null || result3 == null) {
      SmartDialog.showToast('请将所有项都填写完毕！');
    }
    // print(isAddWarning);
    // int meishen = int.parse(maishenController.text);
    // int shuini = int.parse(shuiniController.text);
    // int all = 0;
    // if (isBushing == 1) {
    //   all += 600;
    // }
    // if (isCoverPlate == 1) {
    //   all += 600;
    // }
    // if (isAddWarning == 1) {
    //   all += 150;
    // }
    // if (isCoverPlate == 1) {
    //   all += 460;
    // }
    // print(all);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(50),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                        child: Text(
                          '*请将所有项都填写完毕！',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            child: const Text(
                              '可通航船底面至河底土壤深度或未通航水深 : ',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          RadioListTile(
                            title: const Text('0-0.5m'),
                            value: 0,
                            groupValue: result1,
                            onChanged: (value) {
                              setState(() {
                                result1 = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text('0.5-1m'),
                            value: 2,
                            groupValue: result1,
                            onChanged: (value) {
                              setState(() {
                                result1 = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text('1-1.5m'),
                            value: 3,
                            groupValue: result1,
                            onChanged: (value) {
                              setState(() {
                                result1 = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text('1.5-2m'),
                            value: 4,
                            groupValue: result1,
                            onChanged: (value) {
                              setState(() {
                                result1 = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text('>= 2m'),
                            value: 0,
                            groupValue: result1,
                            onChanged: (value) {
                              setState(() {
                                result1 = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            child: const Text(
                              '相对河底土壤的管道埋深 : ',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          RadioListTile(
                            title: const Text('0-0.5m'),
                            value: 0,
                            groupValue: result2,
                            onChanged: (value) {
                              setState(() {
                                result2 = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text('0-0.5m'),
                            value: 3,
                            groupValue: result2,
                            onChanged: (value) {
                              setState(() {
                                result2 = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text('0-0.5m'),
                            value: 5,
                            groupValue: result2,
                            onChanged: (value) {
                              setState(() {
                                result2 = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text('0-0.5m'),
                            value: 7,
                            groupValue: result2,
                            onChanged: (value) {
                              setState(() {
                                result2 = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text('0-0.5m'),
                            value: 10,
                            groupValue: result2,
                            onChanged: (value) {
                              setState(() {
                                result2 = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            child: const Text(
                              '保护措施 : ',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          RadioListTile(
                            title: const Text('无保护措施'),
                            value: 0,
                            groupValue: result3,
                            onChanged: (value) {
                              setState(() {
                                result3 = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text('石笼稳管、加设固定墩等稳管措施'),
                            value: 3,
                            groupValue: result3,
                            onChanged: (value) {
                              setState(() {
                                result3 = value;
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text('采用3cm以上水泥保护层或其他能达到同样加固效果的措施'),
                            value: 5,
                            groupValue: result3,
                            onChanged: (value) {
                              setState(() {
                                result3 = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      SmartDialog.dismiss();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.red,
                      ),
                    ),
                    child: const Text(
                      '取消',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => confirm(),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: const Text(
                      '确定',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
