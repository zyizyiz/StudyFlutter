import 'package:FlutterLearn/douban/model/home_model.dart';
import 'package:FlutterLearn/douban/widgets/UI/ZDashedLine.dart';
import 'package:FlutterLearn/douban/widgets/UI/ZStarRating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ZHomeMovieItem extends StatelessWidget {

  final MovieItem movie;

  ZHomeMovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(
          width: 8,
          color: Color(0xffcccccc),
        )),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(),
          SizedBox(
            height: 8,
          ),
          buildContent(),
          SizedBox(
            height: 8,
          ),
          buildFooter(),
        ],
      ),
    );
  }

  /// 头部的布局
  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        "No.${movie.rank}",
        style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 131, 95, 35)),

      ),
    );
  }

  /// 内容的布局
  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        SizedBox(
          width: 8,
        ),
        buildContentInfo(),
        SizedBox(
          width: 8,
        ),
        buildContentLine(),
        SizedBox(
          width: 8,
        ),
        buildContentWish()
      ],
    );
  }

  /// 内容的图片
  Widget buildContentImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        movie.imageURL,
        height: 150,
      ),
    );
  }

  /// 内容的信息
  Widget buildContentInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentInfoTitle(),
          SizedBox(
            height: 8,
          ),
          buildContentInfoRate(),
          SizedBox(
            height: 8,
          ),
          buildContentInfoDesc(),
        ],
      ),
    );
  }

  Widget buildContentInfoTitle() {
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            child: Icon(Icons.play_circle_outline,
              color: Colors.pink,
              size: 40,
            ),
            baseline: TextBaseline.ideographic,
            alignment: PlaceholderAlignment.middle,
          ),
          WidgetSpan(
            child: Text(movie.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            alignment: PlaceholderAlignment.middle
          ),
          WidgetSpan(
            child: Text("(${movie.playDate})",
              style: TextStyle(fontSize: 18,color: Colors.grey),
            ),
          ),
        ],
      ),

    );
  }

  Widget buildContentInfoRate() {
    return Row(
      children: [
        ZStarRating(rating: movie.rating, size: 20,),
        SizedBox(width: 6,),
        Text(
          "${movie.rating}",
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }

  Widget buildContentInfoDesc() {
    final genresString = movie.genres.join(" ");
    final directorString = movie.director.name;
    
    List<Actor> casts = movie.casts;
    final actorString = movie.casts.map((e) => e.name).join(" ");
    
    return Text(
      "$genresString /  $directorString / $actorString",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 16),
    );
  }
  
  /// 内容的虚线
  Widget buildContentLine() {
    return Container(
      height: 100,
      child: ZDashedLine(
        axis: Axis.vertical,
        dashedWidth: 4,
        dashedHeight: 6,
        count: 10,
        color: Colors.pink,
      ),
    );
  }

  /// 内容的想看
  Widget buildContentWish() {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/home/wish.png"),
          Text(
            "想看",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 235, 170, 60)
            ),
          ),
        ],
      ),
    );
  }

  /// 尾部的布局
  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        movie.originalTitle,
        style: TextStyle(fontSize: 20, color: Color(0xff666666)),
      ),
    );
  }
}