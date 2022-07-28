import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {"1": "اختر اللغة", "2": "الإنجليزية", "3": "العربية"},
        "en": {"1": "choose language", "2": "English", "3": "Arabic"}
      };
}
