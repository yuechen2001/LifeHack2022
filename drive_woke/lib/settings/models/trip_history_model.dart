import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class TripHistory {
  TripHistory(
      {required this.date, required this.duration, required this.alarmCount});

  Timestamp date;
  int duration;
  int alarmCount;

  factory TripHistory.fromJson(String str) =>
      TripHistory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TripHistory.fromMap(Map<String, dynamic> json) => TripHistory(
      // chatTimeIdself: json["chat_time__idself"] == null ? null : json["chat_time__idself"],
      // citizenId: json["citizenID"] == null ? null : citizenIdValues.map[json["citizenID"]],
      // citizenImg: json["citizenImg"] == null ? null : json["citizenImg"],
      date: json['date'],
      duration: json['duration'],
      alarmCount: json['alarmCount']);

  Map<String, dynamic> toMap() =>
      {"date": date, "duration": duration, "alarmCount": alarmCount};
}
