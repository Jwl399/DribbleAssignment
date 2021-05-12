import 'package:flutter/material.dart';

class FloatingIcon extends StatelessWidget{
  final IconData icon;
  final String title;
  final Function onTap;
  FloatingIcon({this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: InkWell(
        onTap: onTap,
      child: Container(

        width: 50,
        height: 90,
        child: Column(
          children: [
            Expanded(child: Card(
              elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
          child: Center(
          child: Icon(

            icon,
            size: 25.0,
            color: Colors.grey,

          ),

              ),
            ),
            ),
            SizedBox(height: 15.0),
            Text(title),


          ]
        )
      )
      )
    );
  }
}