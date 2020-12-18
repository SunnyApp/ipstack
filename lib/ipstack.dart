library ipstack;

import 'dart:convert';

import 'package:ipstack/ip_stack_response.dart';
import 'package:http/http.dart' as http;

export 'ip_stack_response.dart';

class IpStack {
  static IpStack global;

  final String apiKey;
  final bool useHttps;

  IpStack.of(this.apiKey, {this.useHttps = false})
      : assert(apiKey != null, "You must provide an api key");

  Future<IpStackResponse> ip(String ipAddress) async {
    assert(ipAddress != null, "Ip must not be null");
    final resp = await http.get(
        "http${useHttps ? 's' : ''}://api.ipstack.com/$ipAddress?access_key=$apiKey&format=1");
    return fromResponse(resp);
  }

  Future<IpStackResponse> requester() async {
    final resp = await http.get(
        "http${useHttps ? 's' : ''}://api.ipstack.com/check?access_key=$apiKey&format=1");
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
