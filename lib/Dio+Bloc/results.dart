import 'dart:html';
import 'dart:ui';
import 'package:BullsEye/Dio+Bloc/registered.dart';
import 'dob.dart';
import 'id.dart';
import 'login.dart';
import 'name.dart';
import 'location.dart';
import 'picture.dart';

class Results {
  String gender;
  Name name;
  Location location;
  String email;
  Login login;
  Dob dob;
  Registered registered;
  String phone;
  String cell;
  Id id;
  Picture picture;
  String nat;

  Results.fromJsonMap(Map<String, dynamic> map)
      : gender = map["gender"],
        name = Name.fromJsonMap(map["name"]),
        location = Location.fromJsonMap(map["location"]),
        email = map["email"],
        login = Login.fromJsonMap(map["login"]),
        dob = Dob.fromJsonMap(map["dob"]),
        registered = Registered.fromJsonMap(map["registered"]),
        phone = map["phone"],
        cell = map["cell"],
        id = Id.fromJsonMap(map["id"]),
        picture = Picture.fromJsonMap(map["picture"]),
        nat = map["nat"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = gender;
    data['name'] = name == null ? null : name.toJson();
    data['location'] = location == null ? null : location.toJson();
    data['email'] = email;
    data['login'] = login == null ? null : login.toJson();
    data['dob'] = dob == null ? null : dob.toJson();
    data['registered'] = registered == null ? null : registered.toJson();
    data['phone'] = phone;
    data['cell'] = cell;
    data['id'] = id == null ? null : id.toJson();
    data['picture'] = picture == null ? null : picture.toJson();
    data['nat'] = nat;
    return data;
  }
}
