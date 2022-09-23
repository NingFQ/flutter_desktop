import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class CalculationDialog1 extends StatefulWidget {
  const CalculationDialog1({super.key});

  @override
  State<CalculationDialog1> createState() => _CalculationDialog1State();
}

class _CalculationDialog1State extends State<CalculationDialog1> {
  /// 埋深输入框
  TextEditingController maishenController = TextEditingController();

  /// 水泥保护层输入框
  TextEditingController shuiniController = TextEditingController();

  /// 管道是否套管
  int? isBushing;

  /// 加强水泥盖板
  int? isCoverPlate;

  /// 警告
  int? isAddWarning;

  /// 围栏
  int? isEnclosure;

  void confirm() {
    print(
        '埋深=====${maishenController.text}哈哈===shuini ===${shuiniController.text}');
    print(isAddWarning);

    if (maishenController.text.isEmpty ||
        shuiniController.text.isEmpty ||
        isBushing == null ||
        isCoverPlate == null ||
        isAddWarning == null ||
        isEnclosure == null) {
      SmartDialog.showToast('请将所有项都填写完毕！');
    }
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
                    Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: maishenController,
                            decoration: const InputDecoration(
                              labelText: '埋地段埋深(mm)',
                              labelStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        const SizedBox(width: 50),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: shuiniController,
                            decoration: const InputDecoration(
                              labelText: '水泥保护层(mm)',
                              labelStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: const Text('管道是否套管 : '),
                        ),
                        Flexible(
                          child: RadioListTile(
                            title: const Text('是'),
                            value: 600,
                            groupValue: isBushing,
                            onChanged: (value) {
                              setState(() {
                                isBushing = value;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile(
                            title: const Text('否'),
                            value: 0,
                            groupValue: isBushing,
                            onChanged: (value) {
                              setState(() {
                                isBushing = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: const Text('加强水泥盖板 : '),
                        ),
                        Flexible(
                          child: RadioListTile(
                            title: const Text('是'),
                            value: 600,
                            groupValue: isCoverPlate,
                            onChanged: (value) {
                              setState(() {
                                isCoverPlate = value;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile(
                            title: const Text('否'),
                            value: 0,
                            groupValue: isCoverPlate,
                            onChanged: (value) {
                              setState(() {
                                isCoverPlate = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: const Text('警告标志带 : '),
                        ),
                        Flexible(
                          child: RadioListTile(
                            title: const Text('是'),
                            value: 150,
                            groupValue: isAddWarning,
                            onChanged: (value) {
                              setState(() {
                                isAddWarning = value;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile(
                            title: const Text('否'),
                            value: 0,
                            groupValue: isAddWarning,
                            onChanged: (value) {
                              setState(() {
                                isAddWarning = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: const Text('网栏围住 : '),
                        ),
                        Flexible(
                          child: RadioListTile(
                            title: const Text('是'),
                            value: 460,
                            groupValue: isEnclosure,
                            onChanged: (value) {
                              setState(() {
                                isEnclosure = value;
                              });
                            },
                          ),
                        ),
                        Flexible(
                          child: RadioListTile(
                            title: const Text('否'),
                            value: 0,
                            groupValue: isEnclosure,
                            onChanged: (value) {
                              setState(() {
                                isEnclosure = value;
                              });
                            },
                          ),
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
      ),
    );
  }
}
