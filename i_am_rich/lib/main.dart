import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75.0),
          child: AppBar(
            centerTitle: true,
            title: Text(
              "I Am Rich",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.deepOrangeAccent,
          ),
        ),
        backgroundColor: Colors.deepOrange,
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/104755177/original/aa4a2a8769c2f83cd9cc4569f5e07f6e79231cf8/stylish-geometrical-designs-animals-or-characters.png'),
          ),
        ),
      ),
    ),
  );
}
