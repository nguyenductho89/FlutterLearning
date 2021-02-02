import 'dart:ui';
import 'name.dart';
import 'location.dart';
import 'picture.dart';

class User {
  final String gender;
  final Name name;
  final Location location;
  final String email;
  final Picture picture;

  User(this.gender, this.name, this.location, this.email, this.picture);

  User.fromJson(Map<String, dynamic> json)
      : gender = json["gender"],
        name = Name.fromJsonMap(json["name"]),
        location = Location.fromJsonMap(json["location"]),
        email = json["email"],
        picture = Picture.fromJsonMap(json["picture"]);
}
