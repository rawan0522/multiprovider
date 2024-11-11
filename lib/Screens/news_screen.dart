import 'package:flutter/material.dart';
import 'package:multiproviders/Providers/news_provider.dart';
import 'package:multiproviders/Widgets/news_widget.dart';
import 'package:provider/provider.dart';
class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("News App" , style: TextStyle(fontSize: 20,color:Colors.white),),
      ),
      body: Consumer<NewsProvider>(
        builder: (context, provider, child){
        final newsProvider = provider.newsModel?.news;
        if(newsProvider== null){
          provider.fetchData();
          return Center(child: CircularProgressIndicator(),);
        }else{
          return ListView.separated(
              itemBuilder: (context, index) {
              return NewsWidget(
                  img:newsProvider[index]["urlToImage"]??"",
                  title: newsProvider[index]["title"]??"",
                  description: newsProvider[index]["description"]??""
              );
              },
              separatorBuilder: (context, index) => SizedBox(height: 10,),
              itemCount: newsProvider.length
          );
        }
      },),
    );
  }
}
