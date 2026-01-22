import 'dart:ui';

import 'package:get/get.dart';

class PoemController extends GetxController {
  var isArabic = true.obs; // لإدارة اللغة
  var poems = <Map<String, String>>[].obs; // قائمة القصائد

  @override
  void onInit() {
    super.onInit();
    // تحميل البيانات
   poems.value = [
  {'title_ar': 'أنسى أن أموت', 'title_en': 'Forget to Die', 'image': 'images/albrdony.png'},
  {'title_ar': 'صنعاء والموت والميلاد', 'title_en': 'Sanaa, Death and Birth', 'image': 'images/albrdony.png'},
  {'title_ar': 'من منفى إلى منفى', 'title_en': 'From Exile to Exile', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلا أنا وبلادي', 'title_en': 'Only Me and My Country', 'image': 'images/albrdony.png'},
  {'title_ar': 'صنعاء والحلم والزمن', 'title_en': 'Sanaa, Dream and Time', 'image': 'images/albrdony.png'},
  {'title_ar': 'بلاد في المنفى', 'title_en': 'A Country in Exile', 'image': 'images/albrdony.png'},
  {'title_ar': 'من أرض بلقيس', 'title_en': 'From the Land of Bilqis', 'image': 'images/albrdony.png'},
  {'title_ar': 'فلسفة الجراح', 'title_en': 'Philosophy of Wounds', 'image': 'images/albrdony.png'},
  {'title_ar': 'حين يشقى الناس', 'title_en': 'When People Suffer', 'image': 'images/albrdony.png'},
  {'title_ar': 'مدرسة الحياة', 'title_en': 'School of Life', 'image': 'images/albrdony.png'},
  {'title_ar': 'هائم', 'title_en': 'Wanderer', 'image': 'images/albrdony.png'},
  {'title_ar': 'سحر الربيع', 'title_en': 'Magic of Spring', 'image': 'images/albrdony.png'},
  {'title_ar': 'طائر الربيع', 'title_en': 'Bird of Spring', 'image': 'images/albrdony.png'},
  {'title_ar': 'عودة القائد', 'title_en': 'Return of the Leader', 'image': 'images/albrdony.png'},
  {'title_ar': 'عروس الحزن', 'title_en': 'Bride of Sorrow', 'image': 'images/albrdony.png'},
  {'title_ar': 'أثيم الهوى', 'title_en': 'Sinful Passion', 'image': 'images/albrdony.png'},
  {'title_ar': 'وهكذا قالت', 'title_en': 'And Thus She Said', 'image': 'images/albrdony.png'},
  {'title_ar': 'ليالي الجائعين', 'title_en': 'Nights of the Hungry', 'image': 'images/albrdony.png'},
  {'title_ar': 'منها وإليها', 'title_en': 'From Her and To Her', 'image': 'images/albrdony.png'},
  {'title_ar': 'الشاعر', 'title_en': 'The Poet', 'image': 'images/albrdony.png'},
  {'title_ar': 'سائل', 'title_en': 'Questioner', 'image': 'images/albrdony.png'},
  {'title_ar': 'في الطريق', 'title_en': 'On the Road', 'image': 'images/albrdony.png'},
  {'title_ar': 'الربيع والشعر', 'title_en': 'Spring and Poetry', 'image': 'images/albrdony.png'},
  {'title_ar': 'سكرة الحب', 'title_en': 'Drunkenness of Love', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى أمي', 'title_en': 'To My Mother', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى صديق', 'title_en': 'To a Friend', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى فتاة', 'title_en': 'To a Girl', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى شاعر', 'title_en': 'To a Poet', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى بلادي', 'title_en': 'To My Country', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى اليمن', 'title_en': 'To Yemen', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى صنعاء', 'title_en': 'To Sanaa', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى عدن', 'title_en': 'To Aden', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى تعز', 'title_en': 'To Taiz', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى مأرب', 'title_en': 'To Marib', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى حبيبة', 'title_en': 'To My Beloved', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى رفيق', 'title_en': 'To a Companion', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى أمل', 'title_en': 'To Hope', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى حلم', 'title_en': 'To a Dream', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى غدٍ', 'title_en': 'To Tomorrow', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الحرية', 'title_en': 'To Freedom', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الثورة', 'title_en': 'To the Revolution', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الشهيد', 'title_en': 'To the Martyr', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الفجر', 'title_en': 'To the Dawn', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الشمس', 'title_en': 'To the Sun', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى المطر', 'title_en': 'To the Rain', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الربيع', 'title_en': 'To the Spring', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الطفولة', 'title_en': 'To Childhood', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الشباب', 'title_en': 'To Youth', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الشيخوخة', 'title_en': 'To Old Age', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الموت', 'title_en': 'To Death', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الحياة', 'title_en': 'To Life', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الحب', 'title_en': 'To Love', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الشعر', 'title_en': 'To Poetry', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى القلم', 'title_en': 'To the Pen', 'image': 'images/albrdony.png'},
  {'title_ar': 'إلى الكتاب', 'title_en': 'To the Book', 'image': 'images/albrdony.png'},
];
  }

  void toggleLanguage() {
    isArabic.value = !isArabic.value;
    if (isArabic.value) {
      Get.updateLocale(Locale('ar'));
    } else {
      Get.updateLocale(Locale('en'));
    }
  }
}

