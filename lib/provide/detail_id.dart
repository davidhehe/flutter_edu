import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Device with ChangeNotifier {
//   int deviceW;
//   int deviceH;
//   Device({this.deviceW,this.deviceH});
//   void deviceResize(int w,int h){
//     deviceW = w;
//     deviceH = h;
//     notifyListeners();
//   }
// }

class Id with ChangeNotifier {
  int id;
  // Id(this.id);
  void idChange(int i){
    id = i;
    notifyListeners();
  }
  int get d =>  id;
}