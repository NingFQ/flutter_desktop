import 'package:flutter_desktop/data/Question_entity.dart';
import 'package:flutter_desktop/data/Option_entity.dart';

questionEntityFromJson(QuestionEntity data, Map<String, dynamic> json) {
	if (json['level'] != null) {
		data.level = json['level'] is String
				? int.tryParse(json['level'])
				: json['level'].toInt();
	}
	if (json['level1Name'] != null) {
		data.level1Name = json['level1Name'].toString();
	}
	if (json['level2Name'] != null) {
		data.level2Name = json['level2Name'].toString();
	}
	if (json['level3Name'] != null) {
		data.level3Name = json['level3Name'].toString();
	}
	if (json['level4Name'] != null) {
		data.level4Name = json['level4Name'].toString();
	}
	if (json['questionId'] != null) {
		data.questionId = json['questionId'] is String
				? int.tryParse(json['questionId'])
				: json['questionId'].toInt();
	}
	if (json['questionName'] != null) {
		data.questionName = json['questionName'].toString();
	}
	if (json['questionType'] != null) {
		data.questionType = json['questionType'] is String
				? int.tryParse(json['questionType'])
				: json['questionType'].toInt();
	}
	if (json['isDone'] != null) {
		data.isDone = json['isDone'] is String
				? int.tryParse(json['isDone'])
				: json['isDone'].toInt();
	}
	if (json['questionScore'] != null) {
		data.questionScore = json['questionScore'] is String
				? double.tryParse(json['questionScore'])
				: json['questionScore'].toDouble();
	}
	if (json['option'] != null) {
		data.option = (json['option'] as List).map((v) => OptionEntity().fromJson(v)).toList();
	}
	if (json['checkedCode'] != null) {
		data.checkedCode = json['checkedCode'] is String
				? int.tryParse(json['checkedCode'])
				: json['checkedCode'].toInt();
	}
	return data;
}

Map<String, dynamic> questionEntityToJson(QuestionEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['level'] = entity.level;
	data['level1Name'] = entity.level1Name;
	data['level2Name'] = entity.level2Name;
	data['level3Name'] = entity.level3Name;
	data['level4Name'] = entity.level4Name;
	data['questionId'] = entity.questionId;
	data['questionName'] = entity.questionName;
	data['questionType'] = entity.questionType;
	data['isDone'] = entity.isDone;
	data['questionScore'] = entity.questionScore;
	data['option'] =  entity.option?.map((v) => v.toJson())?.toList();
	data['checkedCode'] = entity.checkedCode;
	return data;
}