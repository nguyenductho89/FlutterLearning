import 'package:BullsEye/Dio+Bloc/response.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';
import 'UserResponse.dart';
import 'response.dart';

class Dio_Bloc_RestfulClient {
  final String _endpoint = "https://randomuser.me/api/";
  final Dio _dio = Dio();

  Future<UserResponse> getUser() async {
    try {
      Response response = await _dio.get(_endpoint);
      return UserResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return UserResponse.withError("$error");
    }
  }
}

class UserRepository {
  Dio_Bloc_RestfulClient _apiProvider = Dio_Bloc_RestfulClient();

  Future<UserResponse> getUser() {
    return _apiProvider.getUser();
  }
}

class UserBloc {
  final UserRepository _repository = UserRepository();
  final BehaviorSubject<UserResponse> _subject =
      BehaviorSubject<UserResponse>();

  getUser() async {
    UserResponse response = await _repository.getUser();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<UserResponse> get subject => _subject;
}

final bloc = UserBloc();
//https://blog.usejournal.com/flutter-http-requests-with-dio-rxdart-and-bloc-da325ca5fe33
