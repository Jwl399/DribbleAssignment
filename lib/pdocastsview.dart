import 'package:flutter/material.dart';
import './Podcast.dart';

class PodCastPlayer extends StatefulWidget{
  final Podcast podcast;
  PodCastPlayer({this.podcast});
  @override
  _PodCastPlayerState createState() => _PodCastPlayerState();


}

class _PodCastPlayerState extends State<PodCastPlayer>{

  double timePlayed = 0.0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: ()=> Navigator.pop(context),
          ),
        actions: [
          IconButton(
            icon: Icon(Icons.remove_red_eye_rounded),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(image: AssetImage(widget.podcast.image),
                  fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 35),
            Text(
                widget.podcast.title
            ),
            SizedBox(height: 15),
            Text(widget.podcast.artist),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(
                    Icons.favorite_border,
                    size: 25,
                    color: Colors.pink,
                  ),
                    onPressed: () {},
                ),
                SizedBox(width: 15),
                IconButton(
                    icon: Icon(
                        Icons.comment,
                        size: 25,
                        color: Colors.pink,
              ),

                    onPressed: (){},
                ),
                SizedBox(width: 15),
                IconButton(
                  icon: Icon(
                    Icons.download_sharp,
                    size: 25,
                    color: Colors.pink,
                  ),

                  onPressed: (){},
                ),
                SizedBox(width: 15),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    size: 25,
                    color: Colors.pink,
                  ),

                  onPressed: (){},
                ),
              ],
            ),
            Slider(
              value: timePlayed,
              max: 1.0,
              min: 0.0,
              activeColor: Colors.pink,
              onChanged: (val){
                setState((){
                  timePlayed = val;
                });
            },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Text("00:00"),
                  Spacer(),
                  Text("10:10"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.skip_previous_rounded,
                      size: 50,
                      color: Colors.pink,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 30),
                  IconButton(
                    icon: Icon(
                      Icons.pause,
                      size: 50,
                      color: Colors.pink,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 30),
                  IconButton(
                    icon: Icon(
                      Icons.skip_next,
                      size: 50,
                      color: Colors.pink,
                    ),
                    onPressed: () {},
                  ),

                ]
              )
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}