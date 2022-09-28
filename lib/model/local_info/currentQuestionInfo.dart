import '../../data/Current_question_entity.dart';
import '../questions/failure_probability/part_one/part_one_type1234.dart';
import '../questions/failure_probability/part_one/part_one_type567.dart';
import '../questions/failure_probability/part_three/part_three.dart';

CurrentQuestionEntity Questioninfo = CurrentQuestionEntity();

/// 管道类型
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

/// 管道类型声明
class PipeLineType {
  /// 输气管道
  static int pipeLineTypeOne = 1;

  /// 输油管道
  static int pipeLineTypeTwo = 2;

  /// 集气管道
  static int pipeLineTypeThree = 3;

  /// 集油管道
  static int pipeLineTypeFour = 4;

  /// 输送天然气、液化气介质的城市燃气管道
  static int pipeLineTypeFive = 5;

  /// 输送人工煤气介质的城市燃气管道
  static int pipeLineTypeSix = 6;

  /// 输送腐蚀性液体介质的工业管道
  static int pipeLineTypeSeven = 7;
}

setCurrentQuestion(int pipeLineType) {
  /// 当前管道类型
  Questioninfo.currentPipelineType = pipeLineType;
  switch (pipeLineType) {
    case 1:

      /// 第三方破坏
      Questioninfo.thirdPartyDamage = fPPartOneType1;

      /// 腐蚀
      /// 设备操作
      Questioninfo.equipmentOperation = fpPartThree;

      ///管道本质安全质量
      break;

    case 2:

      /// 第三方破坏
      Questioninfo.thirdPartyDamage = fPPartOneType1;

      /// 设备操作
      Questioninfo.equipmentOperation = fpPartThree;
      break;
    case 3:

      /// 第三方破坏
      Questioninfo.thirdPartyDamage = fPPartOneType1;

      /// 设备操作
      Questioninfo.equipmentOperation = fpPartThree;
      break;
    case 4:

      /// 第三方破坏
      Questioninfo.thirdPartyDamage = fPPartOneType1;

      /// 设备操作
      Questioninfo.equipmentOperation = fpPartThree;
      break;
    case 5:

      /// 第三方破坏
      Questioninfo.thirdPartyDamage = fPPartOneType2;

      /// 设备操作
      Questioninfo.equipmentOperation = fpPartThree;
      break;
    case 6:

      /// 第三方破坏
      Questioninfo.thirdPartyDamage = fPPartOneType2;

      /// 设备操作
      Questioninfo.equipmentOperation = fpPartThree;
      break;
    case 7:

      /// 第三方破坏
      Questioninfo.thirdPartyDamage = fPPartOneType2;

      /// 设备操作
      Questioninfo.equipmentOperation = fpPartThree;
      break;
    default:
  }
}
