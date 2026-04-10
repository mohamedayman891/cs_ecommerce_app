class EndPoint {
  static String baseUrl = "https://supermarket-dan1.onrender.com/api/v1/";
  static String signIn = "/auth/signIn";
  static String signUp = "auth/signUp";
  static String product = "home/products";
  static String category = "home/categories";
  static String brand = "/home/brands";
  static String getUserDataEndPoint(id) {
    return "user/get-user/$id";
  }
}

class ApiKey {
  static String status = "status";
  static String errorMessage = "ErrorMessage";
  static String email = "email";
  static String password = "password";
  static String token = "token";
  static String message = "message";
  static String id = "id";
  static String fillName = "name";
  static String phone = "phone";
  static String confirmPassword = "password";
}
