class JusModel {
  final int juzNumber;
  final List<JusAyahs> juzAyahs;
  JusModel({required this.juzAyahs, required this.juzNumber});
  factory JusModel.fromJson(Map<String, dynamic> json) {
    Iterable juzAyahs = json['data']['ayahs'];
    List<JusAyahs> juzAyahsList =
        juzAyahs.map((e) => JusAyahs.fromJson(e)).toList();
    return JusModel(juzAyahs: juzAyahsList, juzNumber: json['data']['number']);
  }
}

class JusAyahs {
  final String ayahsText;
  final ayahNumber;
  final String surahName;
  JusAyahs({
    required this.ayahsText,
    required this.surahName,
    required this.ayahNumber,
  });
  factory JusAyahs.fromJson(Map<String, dynamic> json) {
    return JusAyahs(
        ayahNumber: json['number'],
        ayahsText: json['text'],
        surahName: json['surah']['name']);
  }
}
