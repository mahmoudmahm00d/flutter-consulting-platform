class Constants {
  static const String baseURL = 'http://172.31.80.1:8000/api/';
  static const String baseImageURL = 'http://172.31.80.1:8000/';
  static const String applicationTitle = 'Full Consulting';
}

class ApiEndPoints {
  // Auth
  static const String login = 'auth/login';
  static const String register = 'auth/register';
  static const String refreshToken = 'auth/refresh';

  // Account
  static const String profile = 'account/me';
  static const String updateProfile = 'account/me';
  static const String uploadImage = 'account/image';
  // Specializes
  static const String addSpecializes = 'account/specializes/add';
  static const String deleteSpecialize = 'account/specializes/{id}/delete';
  // Specializes
  static const String addContacts = 'account/contact/add';
  static const String deleteContact = 'account/contact/{id}/delete';
  // Specializes
  static const String addSchedule = 'account/schedule/add';
  static const String deleteSchedule = 'account/schedule/{id}/delete';
  // Login options
  static const String changePassword = 'account/changePassword';
  static const String changePhone = 'account/changePhone';
  static const String changeEmail = 'account/changeEmail';

  // Categories
  static const String categories = "categories";

  // Specialists
  static const String specialists = "specialists";
  static const String specialistsByCategory = "specialists/ByCategory/{id}";
  static const String specialistProfile = "specialists/{id}";
  static const String specialistSchedule = "specialists/schedule/{id}";
  static const String rate = "specialists/rate";

  // Appointments
  static const String myAppointment = "appointments";
  static const String showAppointment = "appointments/{id}";
  static const String bookAppointment = "appointments/book";

  // Wallet
  static const String wallet = "wallet";
  static const String transactions = "wallet/transactions";

  // Search
  static const String search = "search";

  // Contacts info types
  static const String contactInfoTypes = "contactInfoTypes";

  // Images
  static const String storage = "${Constants.baseImageURL}storage/";
}
