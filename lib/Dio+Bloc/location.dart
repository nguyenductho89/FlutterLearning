import 'coordinates.dart';
import 'package:BullsEye/Dio+Bloc/timezone.dart';

class Location {
  String street;
  String city;
  String state;
  String postcode;
  Coordinates coordinates;
  Timezone timezone;

  Location.fromJsonMap(Map<String, dynamic> map)
      : street = map["street"],
        city = map["city"],
        state = map["state"],
        postcode = map["postcode"],
        coordinates = Coordinates.fromJsonMap(map["coordinates"]),
        timezone = Timezone.fromJsonMap(map["timezone"]);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = street;
    data['city'] = city;
    data['state'] = state;
    data['postcode'] = postcode;
    data['coordinates'] = coordinates == null ? null : coordinates.toJson();
    data['timezone'] = timezone == null ? null : timezone.toJson();
    return data;
  }
}
