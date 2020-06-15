import 'package:afterclass_calendar/club_service/club_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ClubSearch extends SearchDelegate<ClubPost> {
  // final Stream<List<ClubPost>> post;
  // ClubSearch(this.post);

  Future<String> sendData() async {
      final response = await http.post("http://140.134.79.128:40130/club", 
      body: {query});
    }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    sendData();
    
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text(query);
  }
}

//https://flutter.dev/docs/cookbook/networking/send-data
//https://www.linkedin.com/pulse/how-send-data-from-flutter-app-mysql-database-raushan-jha?articleId=6630201449903153152
