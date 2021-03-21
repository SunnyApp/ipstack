library ipstack;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ipstack/ip_stack_response.dart';

export 'ip_stack_response.dart';

class IpStack {
  final String apiKey;
  final String baseUrl;

  IpStack(String apiKey, {bool useHttps = false})
      : this.ofBaseUrl(apiKey,
            baseUrl: "http${useHttps ? 's' : ''}://api.ipstack.com");

  IpStack.ofBaseUrl(this.apiKey, {required this.baseUrl});

  Future<IpStackResponse> ip(String ipAddress) async {
    final resp = await http
        .get(Uri.parse("$baseUrl/$ipAddress?access_key=$apiKey&format=1"));
    return fromResponse(resp);
  }

  Future<IpStackResponse> requester() async {
    final resp =
        await http.get(Uri.parse("$baseUrl/check?access_key=$apiKey&format=1"));
    return fromResponse(resp);
  }

  IpStackResponse fromResponse(http.Response response) {
    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      return IpStackResponse.fromJson(jsonBody);
    } else {
      throw "Invalid response from ipstack: status=${response.statusCode}, body=${response.body}";
    }
  }
}
