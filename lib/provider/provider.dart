import "package:flutter/cupertino.dart";


class ProviderApp extends ChangeNotifier {
  int _angka = 0;
  int get getAngka => _angka;

  String namesSelected = "";
  String get getNamesSelected => namesSelected;
  final List<String> names = <String>['Aby', 'Aish', 'Ayam', 'Ben', 'Charle', 'Cook'];
  List<String> get getNames => names;

  void increment(){
    _angka++;
    notifyListeners();
  }

  void detailNames(int idx){
    namesSelected = names[idx];
  }
}
