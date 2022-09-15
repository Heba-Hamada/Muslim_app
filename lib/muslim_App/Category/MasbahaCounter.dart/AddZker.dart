import 'package:flutter/material.dart';
import 'package:flutter_application_1/muslim_App/Category/MasbahaCounter.dart/free_Masbaha.dart';
import 'package:provider/provider.dart';

class AddZker extends StatelessWidget {
  const AddZker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'أضف الذكر الذي تريده ',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              Provider.of<AddZ>(context, listen: false).alzker = value;
            },
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Masbaha(),
                  ));
            },
            child: Text('ابدأ '),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blueGrey,
              primary: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class AddZ extends ChangeNotifier {
  String alzker = '';
  void addZker(String zkerr) {
    alzker = zkerr;
    notifyListeners();
  }
}
