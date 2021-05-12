import 'package:flutter/material.dart';
import 'package:dribble_app1_tempoproj1/Podcast.dart';

class Rec extends StatelessWidget{
  final Podcast podcast;
  Rec({this.podcast});
  @override
  Widget build(BuildContext context){
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 8.0,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(podcast.image),
                    fit: BoxFit.cover,
                  )
              ),
            ),

          ),

          Text(
            podcast.title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, color: Colors.pink, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(podcast.artist),
        ],
      ),
    );
  }
}


