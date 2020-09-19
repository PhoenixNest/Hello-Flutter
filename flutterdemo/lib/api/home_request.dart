import 'package:flutterdemo/models/home_model.dart';

import 'http_config.dart';
import 'http_request.dart';

class HomeRequest {
  static List<Hits> hits = [];

  static List<Hits> request() {
    HttpRequest.request(BASE_URL,
        params: {"orientation": "all", "editors_choice": true}).then((value) {
      var data = value.data["hits"];
      for (var hit in data) hits.add(Hits.fromJson(hit));
    });

    return hits;
  }
}
