import '../generated/json/base/json_convert_content.dart';

/// 选项
class OptionEntity with JsonConvert<OptionEntity> {
  /// 选项名称
  String? optionName;

  /// 选项分值
  double? optionScore;

  /// 选项标识
  int? optionCode;
}
