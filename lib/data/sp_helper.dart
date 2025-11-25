import 'package:shared_preferences/shared_preferences.dart';
import '../data/session.dart';
import 'dart:convert';

class SPHelper {
  static late SharedPreferences prefs;

  Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future writeSession(Session session) async {
    prefs.setString(session.id.toString(), json.encode(session.toJson()));
  }

  List<Session> getSessions() {
    final sessions = <Session>[];
    final keys = prefs.getKeys();

    for (final key in keys) {
      if (key != 'counter') {
        final jsonString = prefs.getString(key);
        if (jsonString != null && jsonString.isNotEmpty) {
          final session = Session.fromJson(json.decode(jsonString));
          sessions.add(session);
        }
      }
    }

    return sessions;
  }

  Future setCounter() async {
    int counter = prefs.getInt('counter') ?? 0;
    counter++;
    await prefs.setInt('counter', counter);
  }

  int getCounter() {
    return prefs.getInt('counter') ?? 0;
  }

  Future deleteSession(int id) async {
    prefs.remove(id.toString());
  }
}
