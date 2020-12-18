import 'package:http/http.dart' as http;

Future<String> fetchWithHttpLibrary(String uri) async {
  final resp = await http.get(uri);

  return resp.body;
}
