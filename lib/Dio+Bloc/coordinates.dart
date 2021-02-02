
class Coordinates {

  String latitude;
  String longitude;

	Coordinates.fromJsonMap(Map<String, dynamic> map): 
		latitude = map["latitude"],
		longitude = map["longitude"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['latitude'] = latitude;
		data['longitude'] = longitude;
		return data;
	}
}
