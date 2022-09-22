import 'package:flutter_desktop/data/Current_question_entity.dart';

currentQuestionEntityFromJson(CurrentQuestionEntity data, Map<String, dynamic> json) {
	if (json['currentQuestionCode'] != null) {
		data.currentQuestionCode = json['currentQuestionCode'] is String
				? int.tryParse(json['currentQuestionCode'])
				: json['currentQuestionCode'].toInt();
	}
	if (json['currentQuestion'] != null) {
		data.currentQuestion = (json['currentQuestion'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['currentQuestionCount'] != null) {
		data.currentQuestionCount = json['currentQuestionCount'] is String
				? int.tryParse(json['currentQuestionCount'])
				: json['currentQuestionCount'].toInt();
	}
	if (json['currentQuestionIndex'] != null) {
		data.currentQuestionIndex = json['currentQuestionIndex'] is String
				? int.tryParse(json['currentQuestionIndex'])
				: json['currentQuestionIndex'].toInt();
	}
	return data;
}

Map<String, dynamic> currentQuestionEntityToJson(CurrentQuestionEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['currentQuestionCode'] = entity.currentQuestionCode;
	data['currentQuestion'] = entity.currentQuestion;
	data['currentQuestionCount'] = entity.currentQuestionCount;
	data['currentQuestionIndex'] = entity.currentQuestionIndex;
	return data;
}