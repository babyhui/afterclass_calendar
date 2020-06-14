import 'package:flutter/foundation.dart';

class ActivityPost {
  final String id;
  final String name;
  final DateTime time;
  final String location;
  final int fee;
  final String ckubId;
  final String url;

  ActivityPost({
    @required this.id,
    @required this.name,
    @required this.time,
    @required this.location,
    @required this.fee,
    @required this.ckubId,
    @required this.url,
  });

  factory ActivityPost.fromJson(Map<String, dynamic> json) {
    return ActivityPost(
      id: json['id'] as String,
      name: json['name'] as String,
      time: json['time'] as DateTime,
      location: json['location'] as String,
      fee: json['fee'] as int,
      ckubId: json['ckubId'] as String,
      url: json['url'] as String,
    );
  }
}
