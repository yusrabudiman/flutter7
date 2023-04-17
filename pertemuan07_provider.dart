import "package:flutter/material.dart";

class Pertemuan07Provider extends ChangeNotifier {
  int _ttlNotif = 0;

  int get ttlNotif => _ttlNotif;
  set setTTLNotif(int val) {
    _ttlNotif += val;
    notifyListeners();
  }

  resetNotif() {
    _ttlNotif = 0;
    notifyListeners();
  }

  //Kelompok
  int _kelompok = 0;

  int get kelompok => _kelompok;

  set setKelompok(int val) {
    _kelompok += val;
    notifyListeners();
  }
}
