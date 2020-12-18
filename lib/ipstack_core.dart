library ipstack;

import 'dart:async';
export 'ip_stack_response.dart';
import 'ip_stack_response.dart';

typedef FetchUrl = Future<String> Function(String url);

abstract class IpStack {
  static IpStack global;

  final FetchUrl fetchUrl;
  final String apiKey;

  IpStack.of({this.apiKey, this.fetchUrl})
      : assert(apiKey != null, "You must provide an api key"),
        assert(fetchUrl != null, "You must provide an http strategy.");

  factory IpStack() {
    return global != null
        ? global
        : throw "IpStack has not been initialized yet";
  }
}
