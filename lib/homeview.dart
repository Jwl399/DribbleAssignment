

import 'package:dribble_app1_tempoproj1/FloatingIcons.dart';
import 'package:dribble_app1_tempoproj1/Podcast.dart';
import 'package:dribble_app1_tempoproj1/pdocastsview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dribble_app1_tempoproj1/recCard.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
        color: Colors.white,
      child: SingleChildScrollView(

        child: Column(
          children: [
            SizedBox(height: 25.0),
            SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    RichText(
                text: TextSpan(
                  children: [

                       TextSpan(
                        text: "Good Morning.\n",
                        style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                        ),
                      ),
                       TextSpan(
                        text: "Pete",
                        style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          height: 2,
                      ),
                      ),
                    ],
                    )
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 26.0,
                      backgroundImage: AssetImage("assets/profile/PetePic2.jpg"),
                  )
                  ],
                ),
              ),
            ),
            SizedBox(height:50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),

                  suffixIcon: Icon(Icons.search,
                  color: Colors.pink,
                  size: 20,
                  ),
                  ),
                ),
              ),

            SizedBox(height: 25.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  FloatingIcon(icon: Icons.monetization_on, title: "Premium", onTap: () {}),
                  FloatingIcon(icon: Icons.star, title: "Popular", onTap: () {}),
                  FloatingIcon(icon: Icons.local_fire_department, title: "Trending", onTap: () {}),
                  FloatingIcon(icon: Icons.access_time, title: "Recent", onTap: () {}),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Text(
                    "Recommended",
                  ),
                  Spacer(),
                  Text(
                    "View All",
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              width: double.infinity,
              height: 265,
              margin: EdgeInsets.only(left: 18),
              child: ListView.builder(
                itemCount: recommended.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index){
                  var reco = recommended[index];
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PodCastPlayer(podcast: reco),
                        ),
                      );

                      },
                      child: Rec(podcast: reco),
                  );
                },
              )
            )




          ],
        ),
      ),
    );
  }
}