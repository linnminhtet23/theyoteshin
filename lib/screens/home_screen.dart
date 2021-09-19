import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:the_yoteshin/style/theme.dart' as Style;
import 'package:the_yoteshin/widgets/best_movies.dart';
import 'package:the_yoteshin/widgets/genres.dart';
import 'package:the_yoteshin/widgets/now_playing.dart';
import 'package:the_yoteshin/widgets/persons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Style.Colors.mainColor,
          centerTitle: true,
          title: Text(
            "Y O T E S H I N ",
            overflow: TextOverflow.fade,
            style: TextStyle(color: Colors.amber),
          )),
      // actions: <Widget>[
      //   IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         EvaIcons.searchOutline,
      //         color: Colors.white,
      //       ))
      // ],

      body: ListView(
        children: <Widget>[
          NowPlaying(),
          GenresScreen(),
          //PersonsList(),
          BestMovies(),
        ],
      ),
    );
  }
}
