import 'package:flutter/material.dart';
import 'package:multiproviders/Screens/news_screen.dart';
import 'package:multiproviders/Screens/randomuser_screen.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => RandomuserScreen(),));
          }, child: Text("Random User",style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(),));
          }, child: Text("News App",style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}
