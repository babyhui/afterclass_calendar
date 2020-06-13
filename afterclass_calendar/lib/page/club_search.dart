import 'package:afterclass_calendar/club_service/club_model.dart';
import 'package:flutter/material.dart';

class ClubSearch extends SearchDelegate<ClubPost> {
  // final UnmodifiableListView<Post2> post2;

  // SearchClub(this.post2);

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
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
