import 'package:flutter_desktop/data/Question_entity.dart';
import 'package:flutter_desktop/data/Option_entity.dart';

questionEntityFromJson(QuestionEntity data, Map<String, dynamic> json) {
	if (json['questionPName'] != null) {
		data.questionPName = json['questionPName'].toString();
	}
	if (json['questionName'] != null) {
		data.questionName = json['questionName'].toString();
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
	data['questionPName'] = entity.questionPName;
	data['questionName'] = entity.questionName;
	data['isDone'] = entity.isDone;
	data['questionScore'] = entity.questionScore;
	data['option'] =  entity.option?.map((v) => v.toJson())?.toList();
	data['checkedCode'] = entity.checkedCode;
	return data;
}