
class Login {

  String uuid;
  String username;
  String password;
  String salt;
  String md5;
  String sha1;
  String sha256;

	Login.fromJsonMap(Map<String, dynamic> map): 
		uuid = map["uuid"],
		username = map["username"],
		password = map["password"],
		salt = map["salt"],
		md5 = map["md5"],
		sha1 = map["sha1"],
		sha256 = map["sha256"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['uuid'] = uuid;
		data['username'] = username;
		data['password'] = password;
		data['salt'] = salt;
		data['md5'] = md5;
		data['sha1'] = sha1;
		data['sha256'] = sha256;
		return data;
	}
}
