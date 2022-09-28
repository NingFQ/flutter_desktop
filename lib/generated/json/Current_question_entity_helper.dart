import 'package:flutter_desktop/data/Current_question_entity.dart';

currentQuestionEntityFromJson(CurrentQuestionEntity data, Map<String, dynamic> json) {
	if (json['currentPipelineType'] != null) {
		data.currentPipelineType = json['currentPipelineType'] is String
				? int.tryParse(json['currentPipelineType'])
				: json['currentPipelineType'].toInt();
	}
	if (json['currentQuestionCount'] != null) {
		data.currentQuestionCount = json['currentQuestionCount'] is String
				? int.tryParse(json['currentQuestionCount'])
				: json['currentQuestionCount'].toInt();
	}
	if (json['thirdPartyDamage'] != null) {
		data.thirdPartyDamage = (json['thirdPartyDamage'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['corrode'] != null) {
		data.corrode = (json['corrode'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['equipmentOperation'] != null) {
		data.equipmentOperation = (json['equipmentOperation'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['tubeEssence'] != null) {
		data.tubeEssence = (json['tubeEssence'] as List).map((v) => v).toList().cast<dynamic>();
	}
	return data;
}

Map<String, dynamic> currentQuestionEntityToJson(CurrentQuestionEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['currentPipelineType'] = entity.currentPipelineType;
	data['currentQuestionCount'] = entity.currentQuestionCount;
	data['thirdPartyDamage'] = entity.thirdPartyDamage;
	data['corrode'] = entity.corrode;
	data['equipmentOperation'] = entity.equipmentOperation;
	data['tubeEssence'] = entity.tubeEssence;
	return data;
}