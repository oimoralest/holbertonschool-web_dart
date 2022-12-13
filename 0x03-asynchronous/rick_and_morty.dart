import "package:http/http.dart" as http;
import 'dart:convert';

printRmCharacters() async {
  var url = 'https://rickandmortyapi.com/api/character/';
  try {
    while (true) {
        final res = await http.get(Uri.parse(url));

        var json = jsonDecode(res.body);

        for (var idx = 0; idx < json['results'].length; idx++) {
            print("${json['results'][idx]['name']}");
        }
        if (json['info']['next'] == null) {
            break;
        }
        url = json['info']['next'];
    }
  } catch (err) {
    print('error caught: $err');
  }
}
