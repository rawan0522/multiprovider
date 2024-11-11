import 'package:flutter/material.dart';
import 'package:multiproviders/Providers/randomuser_provider.dart';
import 'package:multiproviders/Widgets/randomuser_widget.dart';
import 'package:provider/provider.dart';
class RandomuserScreen extends StatelessWidget {
  const RandomuserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Random Users" , style: TextStyle(fontSize: 20,color:Colors.white),),
      ),
      body: Consumer<RandomuserProvider>(
        builder: (context, provider, child) {
          final randomUser=provider.randomuserModel;
   if(randomUser == null){
   provider.fetchData();
   return Center(child: CircularProgressIndicator(),);
   }else{
     return ListView.separated(
         itemBuilder: (context, index) {
         final name = randomUser.data.elementAt(index)["Name"];
         final email = randomUser.data.elementAt(index)["Email"];
         final img = randomUser.data.elementAt(index)["img"];
         return RandomuserWidget(
           image:img ,
         Name: name,
         Email:email ,);
         },
         separatorBuilder: (context, index) => SizedBox(height: 10,),
         itemCount: randomUser.data.length
     );
   }
        },
      ),
    );
  }
}
