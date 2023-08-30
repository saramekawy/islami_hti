import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranTab extends StatelessWidget {
  static const String routeName = "Quran Tab";
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset("assets/images/main_icon.png"),
        ),
        const Divider(
          color: Color(0xFFB7935F),
          thickness: 2,
        ),
        Row(
          children: [
            Expanded(
                child: Center(
                    child: Text(
              "اسم السورة",
              style: GoogleFonts.sacramento(
                  fontWeight: FontWeight.w100,
                  fontSize: 25,
                  color: const Color(0xFF242424)),
            ))),
            Expanded(
                child: Center(
                    child: Text(
              "عدد الآيات",
              style: GoogleFonts.sacramento(
                  fontWeight: FontWeight.w100,
                  fontSize: 25,
                  color: const Color(0xFF242424)),
            ))),
          ],
        ),
        const Divider(
          color: Color(0xFFB7935F),
          thickness: 2,
        ),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  // final rowData = suraName[index];

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: Center(
                              child: Text(
                        "${index + 1}",
                        style: GoogleFonts.elMessiri(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: const Color(0xFF242424)),
                      ))),
                      Expanded(
                          child: Center(
                              child: Text(
                        suraName[index],
                        style: GoogleFonts.elMessiri(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: const Color(0xFF242424)),
                      ))),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Color(0xFFB7935F),
                    thickness: 1,
                    indent: 30,
                    endIndent: 30,
                  );
                },
                itemCount: suraName.length)),
      ],
    );
  }
}
