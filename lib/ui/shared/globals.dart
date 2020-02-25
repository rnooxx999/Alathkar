import 'dart:ui';
import 'package:flutter/material.dart';

abstract class Global {
  static const Color lightBlue = const Color(0xffdee6f3);
  static const Color darkBlue = const Color(0xFFAD1457);
  static const Color blue = const Color(0xFFF06292);
  static const Color lightBlack = const Color(0xff201F22);
  static const Color white = const Color(0xffffffff);
  static const Color lightGrey = const Color(0xfff1f3f6);
  static const Color mediumGrey = const Color(0xffe5e7ea);
  static const Color darkGrey = const Color(0xffa3a6a9);

  static final globalKey = GlobalKey<AnimatedListState>();

  static final List<Map> menuItems = [
    {
      'name': 'دعاء السفر',
      'icon': Icons.airplanemode_active,
      'adiah': 'اللهم إنا نسألُكَ في سفرنا هذا البرَّ والتقوى، ومن العمل ما ترضى، اللهم هون علينا سفرنا هذا واطو عنا بعده، اللهم أنت الصاحب في السفر، والخليفة في الأهل، اللهم إني أعوذ بك من وعْثاءِ السفر، وكآبة المنظر وسوء المنقلب في المال والأهل'
    },
    {
      'name': 'دعاء المريض',
      'icon': Icons.local_hospital,
      'adiah': 'للهمّ إنّي أسألك من عَظِيم لُطْفِكَ، وَكَرَمِك، وسِترك الجميل، أن تَشْفِيه وتمدّه بالصّحة والعافية.'
    },
    {
      'name': 'دعاء الطعام',
      'icon': Icons.fastfood,
       'adiah': 'الحَمْدُ للَّه حمداً كَثيراً طَيِّباً مُبَارَكاً فِيه، غَيرَ مَكْفِيٍّ وَلا مُسْتَغْنًي عَنْهُ رَبَّنَا'

    },
    {
      'name': 'دعاء المطر',
      'icon': Icons.grain,
      'adiah': 'اللَّهُمَّ صَيِّبًا نَافِعًا، اللَّهُمَّ صَيِّبًا هَنِيئًا، اللهم لا تقتلنا بغضبك، ولا تهلكنا بعذابك، وعافنا قبل ذلك، اللهم إني أسألك خيرها وخير ما فيها، وشر ما فيها، وشر ما أرسلت به'
    },
    {
      'name': 'دعاء الفرج',
      'icon': Icons.mood_bad,
        'adiah': 'اللَّهمَّ رَحمَتَكَ أرْجو، فلا تَكِلْني إلى نَفْسي طَرْفةَ عَيْنٍ، أصْلِحْ لي شَأْني كُلَّهُ، لا إلهَ إلَّا أنتَ '

    },
    {
      'name': 'دعاء الاستخارة',
      'icon': Icons.wc,
             'adiah': 'اللهم إني أستخيرك بعلمك، وأستقدرك بقدرتك ، و أسألك من فضلك العظيم ، فإنك تقدر ولا أقدر ، و تعلم ولا أعلم ، و أنت علام الغيوب .'

    },
  ];
}