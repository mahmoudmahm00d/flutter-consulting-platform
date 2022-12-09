import 'localization/ar.dart';
import 'localization/en.dart';
import 'package:get/get.dart';

class Localizations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': english,
        'ar_SY': arabic,
      };
}
