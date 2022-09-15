import 'package:flutter/material.dart';

class AlHadehALnabawe extends StatefulWidget {
  const AlHadehALnabawe({super.key});

  @override
  State<AlHadehALnabawe> createState() => _AlHadehALnabaweState();
}

class _AlHadehALnabaweState extends State<AlHadehALnabawe> {
  List<String> list = [
    ''' قال رسول الله صلى الله عليه وسلم: (إِذَا مَاتَ الإنْسَانُ انْقَطَعَ عنْه عَمَلُهُ إِلَّا مِن ثَلَاثَةٍ: إِلَّا مِن صَدَقَةٍ جَارِيَةٍ، أَوْ عِلْمٍ يُنْتَفَعُ بِهِ، أَوْ وَلَدٍ صَالِحٍ يَدْعُو له''',
    ''' عن جابر بن عبد الله -رضي الله عنه- قال: قال رسول الله صلّى الله عليه وسلم: (سلُوا اللهَ علمًا نافعًا، وتَعَوَّذُوا باللهِ منْ علمٍ لا ينفعُ)''',
    '''قال صلّى الله عليه وسلّم: (سيأتيكُم أقوامٌ يطلبونَ العِلمَ، فإذا رأيتُموهم؛ فقولوا لَهُم مَرحبًا مَرحبًا بوصيَّةِ رسولِ اللَّهِ صلَّى اللَّهُ عليهِ وسلَّمَ، واقْنوهُم)
 ''',
    '''قال رسول الله صلى الله عليه وسلم: (مَن جاءَ مَسجِدي هذا لم يَأتِهِ إلَّا لِخيرٍ يتعلَّمُهُ أو يعلِّمُهُ، فَهوَ بمنزلةِ المجاهِدِ في سبيلِ اللَّهِ، ومن جاءَ لغيرِ ذلِكَ فَهوَ بمنزلةِ الرَّجُلِ ينظرُ إلى متاعِ غيرِهِ).
    ''',
    ''' قال رسول الله صلى الله عليه وسلم: (نضَّرَ اللَّهُ امرأً سمِعَ منَّا حديثًا فحفِظَهُ حتَّى يبلِّغَهُ غيرَهُ، فرُبَّ حاملِ فقهٍ ليسَ بفَقيهٍ، ورُبَّ حاملِ فقهٍ إلى من هوَ أفقَهُ منهُ).''',
    ''' قال رسول الله صلّى الله عليه وسلّم: (طلبُ العلمِ فريضةٌ على كلِّ مسلمٍ)

''',
    ''' قال رسول الله صلى الله عليه وسلم: (فضلُ العلْمِ أحبُّ إِلَيَّ مِنْ فضلِ العبادَةِ، وخيرُ دينِكُمُ الورَعُ)''',
    '''قال رسول الله صلّى الله عليه وسلّم: (اللهمَ باركْ لأمتي في بكورِها، قال: وكان إذا بعث سريةً أو جيشًا، بعثهم أولَ النهارِ، وكان صخرُ رجلًا تاجرًا، وكان إذا بعث تجارةً بعثهم أولَ النهارِ، فأثرى وكثر مالُه)

''',
    '''مر على النبيّ صلّى الله عليه وسلّم رجل، فرأى أصحابُ رسول الله -صلّى الله عليه وسلّم- من جلده ونشاطه، فقالوا: يا رسول الله لو كان هذا في سبيل الله؟ فقال: (إنْ كان خرجَ يَسعَى على ولَدِهِ صِغارًا فهوَ في سبيلِ اللهِ، وإنْ كان خرجَ يَسعَى على أبويْنِ شيْخيْنِ كبيريْنِ، فهوَ في سبيلِ اللهِ، وإنْ كان خرجَ يَسعَى على نفسِهِ يَعِفُّها فهوَ في سبيلِ اللهِ، وإنْ كان خرجَ يسعَى رِياءً ومُفاخَرةً فهوَ في سبيلِ الشيْطانِ).[٩] قال رسول الله صلى الله عليه وسلم: (إنَّ اللهَ تعالى يحبُّ إذا عملَ أحدُكمْ عملًا أنْ يتقنَهُ)

9 ''',
    ''' قال رسول الله صلى الله عليه وسلم: (إنْ قامَتِ الساعةُ وفي يدِ أحدِكمْ فَسِيلةٌ، فإنِ استطاعَ أنْ لا تقومَ حتى يَغرِسَها فلْيغرِسْهَا).
''',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown.shade200,
        title: Text(
          'أحاديث نبوية ',
        ),
        actions: [
          SizedBox(
            width: 15,
          ),
          Image.asset(
            'assets/Images/nabawe.png',
            color: Colors.white,
            height: 50,
            width: 50,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => AlHadehALnabaweWidgets(list[index]),
      ),
    );
  }
}

class AlHadehALnabaweWidgets extends StatelessWidget {
  AlHadehALnabaweWidgets(this.list);
  String list;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.brown.shade200,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      child: Text(
        textAlign: TextAlign.end,
        list,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
      ),
    );
  }
}
/*Image.asset(
          'assets/Images/ahadeh.png',
          height: 40,
          width: 40,
        ),*/