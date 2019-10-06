import 'package:flutter_proxy_provider/page_information.dart';
import 'package:flutter_proxy_provider/web_parser_api.dart';
import 'package:provider/provider.dart';

List<SingleChildCloneableWidget> providers = [...independentServices, ...dependentServices, ...uiConsumableProviders];

List<SingleChildCloneableWidget> independentServices = [
  Provider(
    builder: (_) => WebParserApi.create(),
    dispose: (_, WebParserApi service) => service.client.dispose(),
  ),
];

List<SingleChildCloneableWidget> dependentServices = [
  ProxyProvider<WebParserApi, PageInformation>(
    builder: (context, api, retrievePageSummarizedInformation) => PageInformation(api: api),
  )
];

List<SingleChildCloneableWidget> uiConsumableProviders = [];
