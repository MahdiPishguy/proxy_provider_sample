// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_parser_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$WebParserApi extends WebParserApi {
  _$WebParserApi([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = WebParserApi;

  Future<Response> getProfileRetrieveFromParser(String username) {
    final $url = '/$username/?__a=1';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
