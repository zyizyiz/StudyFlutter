
import 'package:FlutterLearn/douban/Request/home_request.dart';
import 'package:FlutterLearn/douban/model/home_model.dart';
import 'package:FlutterLearn/douban/pages/home/home_movie_item.dart';
import 'package:flutter/cupertino.dart';

class ZHomeContent extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ZHomeContentState();
  }
}

class _ZHomeContentState extends State<ZHomeContent> {

  final List<MovieItem> movies = [];

  @override
  void initState() {
    
    ZHomeRequest.requestMovieList(0).then((value) {
      setState(() {
        movies.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (ctx, index){
            return ZHomeMovieItem(movies[index]);
          }),
    );
  }
}