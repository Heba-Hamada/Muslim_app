class SajdaList {
  final List<SajdaAyat> sajdaAyat;
  SajdaList({required this.sajdaAyat});
  factory SajdaList.fromJson(Map<String, dynamic> json) {
    Iterable allSajdas = json['data']['ayahs'];
    List<SajdaAyat> sajdas =
        allSajdas.map((e) => SajdaAyat.fromJson(e)).toList();
    return SajdaList(sajdaAyat: sajdas);
  }
}

class SajdaAyat {
  int? number;
  String? text;
  String? surahName;
  String? surahenglishName;
  String? englishNameTranslation;
  String? revelationType;

  int? mnazilNumber;
  int? rukuNumber;
  int? sajdaNumber;
  int? juzNumber;
  SajdaAyat(
      {required this.number,
      required this.sajdaNumber,
      required this.englishNameTranslation,
      required this.mnazilNumber,
      required this.revelationType,
      required this.rukuNumber,
      required this.surahenglishName,
      required this.surahName,
      required this.text,
      required this.juzNumber});

  factory SajdaAyat.fromJson(Map<String, dynamic> json) {
    return SajdaAyat(
        number: json['number'],
        sajdaNumber: json['sajda']['id'],
        englishNameTranslation: json['surah']['englishNameTranslation'],
        mnazilNumber: json['manzil'],
        revelationType: json['surah']['revelationType'],
        rukuNumber: json['ruku'],
        surahenglishName: json['surah']['englishName'],
        surahName: json['surah']['name'],
        text: json['text'],
        juzNumber: json['juz']);
  }
}
