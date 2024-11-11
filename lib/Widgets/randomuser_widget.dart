import 'package:flutter/material.dart';
class RandomuserWidget extends StatelessWidget {
  const RandomuserWidget({super.key ,required this.image, required this.Name , required this.Email});
final String Name;
final String Email;
final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 8,
      shadowColor: Colors.pink,
      margin: EdgeInsets.all(10),
      child: Column(
  crossAxisAlignment:   CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(Name ,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(Email ,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          )
         ],
      ),
    );
  }
}
