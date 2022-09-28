import '../generated/json/base/json_convert_content.dart';

/// 当前试卷的信息
class CurrentQuestionEntity with JsonConvert<CurrentQuestionEntity> {
  /// 当前管道类型
  int? currentPipelineType;

  /// 当前试卷有几道题
  int? currentQuestionCount;

  /// 当前加载的第三方破坏题目
  List? thirdPartyDamage;

  /// 当前加载的腐蚀评分
  List? corrode;

  /// 当前加载的设备操作评分
  List? equipmentOperation;

  /// 当前加载的管体本质评分
  List? tubeEssence;
}
