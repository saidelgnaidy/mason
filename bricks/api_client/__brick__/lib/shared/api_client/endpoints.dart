abstract class KEndPoinst {
  static String baseUrl = 'https://forall.4all.ltd/';
  static String lang = '${baseUrl}setting/api/languages';
  static String settings = '${baseUrl}setting/api/settings';
  static String countries = '${baseUrl}setting/api/countries';
  static String cities = '${baseUrl}setting/api/cities';
  static String currencies = '${baseUrl}setting/api/currencies';
  static String company_system_create = '${baseUrl}company/api/company_system';

  //auth
  static String register = '${baseUrl}auth/api/registration';
  static String forget_pass = '${baseUrl}auth/api/forget-password';
  static String login = '${baseUrl}auth/api/login';
  static String logout = '${baseUrl}auth/api/logout';
  static String verify_token = '${baseUrl}auth/api/verify-token';
  static String reset_pass = '${baseUrl}auth/api/reset-password';
  static String update_user = '${baseUrl}auth/api/system_user';
  static String change_pass = '${baseUrl}auth/api/change-password';
  static String user_info = '${baseUrl}auth/api/my-info';

  static String payment_type = '${baseUrl}setting/api/payment_types';
  static String add_payment = '${baseUrl}auth/api/payment_information';
  static String my_payment = '${baseUrl}auth/api/payment_information';
  static String company_read = '${baseUrl}company/api/company_type';
  static String company_package_read = '${baseUrl}company/api/company_package';
  static String branch_read = '${baseUrl}company/api/company_branch';
  static String branch_staff = '${baseUrl}company/api/company_branch_staff';
}
