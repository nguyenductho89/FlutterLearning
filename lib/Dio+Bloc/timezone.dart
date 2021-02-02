
class Timezone {

  String offset;
  String description;

	Timezone.fromJsonMap(Map<String, dynamic> map): 
		offset = map["offset"],
		description = map["description"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['offset'] = offset;
		data['description'] = description;
		return data;
	}
}
