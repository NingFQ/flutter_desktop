import 'package:flutter_desktop/data/Option_entity.dart';

import '../generated/json/base/json_convert_content.dart';

/// 题目实体
class QuestionEntity with JsonConvert<QuestionEntity> {
  /// 父级题目类别名称
  String? questionPName;

  /// 题目名称
  String? questionName;

  /// 是否已做完
  int? isDone;

  /// 分数
  double? questionScore;

  /// 选项
  List<OptionEntity>? option;

  /// 已选择的选项code
  int? checkedCode;
}
