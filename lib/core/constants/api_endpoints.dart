class Auth {
  String endPoint = '/auth';
  String get login => '$endPoint/login';
}



class ApiEndpoints {
  static final auth = Auth();

}
