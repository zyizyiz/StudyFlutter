

import 'package:FlutterLearn/douban/model/home_model.dart';
import 'package:FlutterLearn/service/http_request.dart';

class ZHomeRequest {

  static Future<List<MovieItem>> requestMovieList(int start) async {
    // 1.构建URL
    final movieURL = "/movie/top250?start=$start&count=${HomeConfig.movieCount}&apikey=0df993c66c0c636e29ecbb5344252a4a";

    // 2.发送网络请求获取结果
    final result = await HttpRequest.request(movieURL);
    final subjects = result["subjects"];

    // 3.将Map转成Model
    List<MovieItem> movies = [];
    for (var sub in subjects) {
      movies.add(MovieItem.fromMap(sub));
    }

    return movies;
  }
}


class HomeConfig {
  static const int movieCount = 20;
}
