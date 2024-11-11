import 'package:flutter/cupertino.dart';
import 'package:multiproviders/Models/randomuser_model.dart';
import 'package:multiproviders/Services/randomuser_service.dart';

class RandomuserProvider extends ChangeNotifier {
  RandomuserModel? randomuserModel;

  Future<void> fetchData() async{
    randomuserModel = await RandomuserService.getService();
    notifyListeners();
  }
}
