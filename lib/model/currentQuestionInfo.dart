import '../data/Current_question_entity.dart';
import 'questions/question_one.dart';
import 'questions/question_three.dart';
import 'questions/question_two.dart';
import 'questions/queston_four.dart';

CurrentQuestionEntity Questioninfo = CurrentQuestionEntity();

List? setCurrentQuestion(int index) {
  switch (index) {
    case 1:
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
