
class Dob {

  String date;
  int age;

	Dob.fromJsonMap(Map<String, dynamic> map): 
		date = map["date"],
		age = map["age"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['date'] = date;
		data['age'] = age;
		return data;
	}
}
