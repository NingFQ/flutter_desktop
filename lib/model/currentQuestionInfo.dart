import '../data/Current_question_entity.dart';
import 'questions/question_one.dart';
import 'questions/question_three.dart';
import 'questions/question_two.dart';
import 'questions/queston_four.dart';

CurrentQuestionEntity Questioninfo = CurrentQuestionEntity();

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

List? setCurrentQuestion(int index) {
  switch (index) {
    case 1:

      /// 第三方破坏
      /// 腐蚀
      /// 设备操作
      ///
      Questioninfo.currentQuestionCount = TESTPAPERONE.length;
      Questioninfo.currentQuestionCode = 1;
      return TESTPAPERONE;
    case 2:
      Questioninfo.currentQuestionCount = TESTPAPERTWO.length;
      Questioninfo.currentQuestionCode = 2;
      return TESTPAPERTWO;
    case 3:
      Questioninfo.currentQuestionCount = TESTPAPERTHREE.length;
      Questioninfo.currentQuestionCode = 3;
      return TESTPAPERTHREE;
    case 4:
      Questioninfo.currentQuestionCount = TESTPAPERFOUR.length;
      Questioninfo.currentQuestionCode = 4;
      return TESTPAPERFOUR;
    default:
      Questioninfo.currentQuestionCount = TESTPAPERONE.length;
      Questioninfo.currentQuestionCode = 1;
      return TESTPAPERONE;
  }
}
