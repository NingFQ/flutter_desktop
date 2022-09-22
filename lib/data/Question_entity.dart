import 'package:flutter_desktop/data/Option_entity.dart';

import '../generated/json/base/json_convert_content.dart';

/// 题目实体
class QuestionEntity with JsonConvert<QuestionEntity> {
  /// 题目级别
  int? level;

  /// 一级题目名称
  String? level1Name;

  /// 二级题目名称
  String? level2Name;

  /// 三级题目名称
  String? level3Name;

  /// 四级题目名称
  String? level4Name;

  /// 题目ID
  int? questionId;

  /// 题目名称
  String? questionName;

  /// 题目类型 1 单项选择题 2多个参数计算题
  int? questionType;

  /// 是否已做完
  int? isDone;

  /// 分数
  double? questionScore;

  /// 选项
  List<OptionEntity>? option;

  /// 已选择的选项code
  int? checkedCode;
}
