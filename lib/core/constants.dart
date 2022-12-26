class Constants {
  static const String baseURL = 'http://172.27.128.1:8000/api/';
  static const String applicationTitle = 'Full Consulting';
}

class ApiEndPoints {
  // Auth
  static const String login = 'auth/login';
  static const String register = 'auth/register';
  // App
  static const String specialists = "specialists";
  static const String categories = "categories";
  static const String specialistProfile = "specialists/";
  static const String checkAppointment = "appointments/check";
}
