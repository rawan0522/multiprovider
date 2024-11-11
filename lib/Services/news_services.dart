import 'package:dio/dio.dart';
import 'package:multiproviders/Models/news_model.dart';

class NewsServices {
 static Dio dio = Dio();
 static Future<NewsModel> getService() async{
 try{
   String url ="https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=7c64a4b2debe40168c74926def260cdf";
   var response = await dio.get(url);
   if(response.statusCode == 200){
     return NewsModel.formjson(response.data);
   }else{
     throw Exception("fail to load");
   }
 }catch(e){
   throw Exception(e);
 }
 }
}