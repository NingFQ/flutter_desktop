import '../generated/json/base/json_convert_content.dart';

/// 选项
class CurrentQuestionEntity with JsonConvert<CurrentQuestionEntity> {
  /// 当前试卷标识
  int? currentQuestionCode;

  /// 当前试卷名称
  List? currentQuestion;

  /// 当前试卷有几道题
  int? currentQuestionCount;

  /// 当前显示的第几道
  int? currentQuestionIndex;
}
