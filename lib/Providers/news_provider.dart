import 'package:flutter/material.dart';
import 'package:multiproviders/Models/news_model.dart';
import 'package:multiproviders/Services/news_services.dart';
class NewsProvider extends ChangeNotifier {
  NewsModel? newsModel;
  Future<void>fetchData() async{
    newsModel = await NewsServices.getService();
    notifyListeners();
  }
}
