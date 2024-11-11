import 'package:dio/dio.dart';
import 'package:multiproviders/Models/randomuser_model.dart';

class RandomuserService {
static Dio dio = Dio();

static Future<RandomuserModel> getService() async{
  try{
    String url = "https://randomuser.me/api/?results=50";
    var response = await dio.get(url);
    if(response.statusCode == 200){
      return RandomuserModel.formjson(response.data);
    }else{
      throw Exception("fail to load");
    }
  }catch(e){
    throw Exception(e);
  }

}
}
