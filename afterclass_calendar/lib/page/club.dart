import 'package:afterclass_calendar/page/club_detail.dart';
import 'package:afterclass_calendar/page/club_search.dart';
import 'package:flutter/material.dart';
import '../club_service/club_http.dart';
import '../club_service/club_model.dart';

final ClubHttp clubhttp = ClubHttp();

class Club extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("社團"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: ClubSearch(),
              );
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: clubhttp.getClubPost(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ClubPost>> snapshot) {
          if (snapshot.hasData) {
            List<ClubPost> posts = snapshot.data;
            return ListView(
              children: posts
                  .map((ClubPost post) => ListTile(
                        leading: CircleAvatar(
                          backgroundImage: post.logo != null
                              ? NetworkImage(post.logo)
                              : AssetImage(
                                  "images/圖片顯示中.jpg",
                                ),
                        ),
                        title: Text(post.name),
                        subtitle: Text(
                          post.id.toString(),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ClubDetail(
                                      post: post,
                                    ))),
                      ))
                  .toList(),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
