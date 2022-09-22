import 'package:flutter_desktop/data/Option_entity.dart';

optionEntityFromJson(OptionEntity data, Map<String, dynamic> json) {
	if (json['optionName'] != null) {
		data.optionName = json['optionName'].toString();
	}
	if (json['optionScore'] != null) {
		data.optionScore = json['optionScore'] is String
				? double.tryParse(json['optionScore'])
				: json['optionScore'].toDouble();
	}
	if (json['optionCode'] != null) {
		data.optionCode = json['optionCode'] is String
				? int.tryParse(json['optionCode'])
				: json['optionCode'].toInt();
	}
	return data;
}

Map<String, dynamic> optionEntityToJson(OptionEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['optionName'] = entity.optionName;
	data['optionScore'] = entity.optionScore;
	data['optionCode'] = entity.optionCode;
	return data;
}