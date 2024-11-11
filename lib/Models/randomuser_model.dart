class RandomuserModel {
List data;
RandomuserModel({required this.data});
factory RandomuserModel.formjson(Map<String , dynamic>json){
  List<dynamic> fullData;
  fullData = json["results"].map(
      (user){
        return{
          "Name" : user["name"]["first"] + " "+user["name"]["last"],
          "Email" : user["email"],
          "img" : user["picture"]["large"]
        };
      }
  ).toList();
  return RandomuserModel(data: fullData);
}
}
