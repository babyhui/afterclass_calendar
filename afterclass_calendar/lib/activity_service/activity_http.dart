import 'dart:convert';
import 'package:http/http.dart';

import 'activity_model.dart';

class ClubHttp {
  final String url = "http://140.134.79.128:40130/activity";

  Future<List<ActivityPost>> getClubPost() async {
    Response res = await get(url);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<ActivityPost> posts =
          body.map((dynamic item) => ActivityPost.fromJson(item)).toList();
      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}
