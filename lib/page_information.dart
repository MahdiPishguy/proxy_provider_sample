import 'package:flutter_proxy_provider/web_parser_api.dart';

class PageInformation {
  final WebParserApi _api;

  PageInformation({WebParserApi api}) : _api = api;

  pageProfile(String username) async {
    return await _api.getProfileRetrieveFromParser(username);
  }
}
