class RemoteUrl {
  static const String rootUrl = "https://minionionbd.com/sayarra/";
  static const String baseUrl = '${rootUrl}api/';

  static String deleteAccount = '${baseUrl}user/destroy-account';

  /// report
  static String reportDealer(String slug) => '${baseUrl}report-dealer/$slug';

  /// app status
  static String appStatus = '${baseUrl}user/mobile-application';

  static imageUrl(String imageUrl) => rootUrl + imageUrl;
}
