import 'package:TravelFix/modules/services/platform/PlatformBase.dart';

class WP extends PlatformBase {
  WP() : super() {
    baseUrl = "https://travelflixapp.com/wp-json/wp/v2/";
  }
}