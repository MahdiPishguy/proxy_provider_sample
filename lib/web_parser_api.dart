import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;
import 'dart:io';
part 'web_parser_api.chopper.dart';

@ChopperApi(baseUrl: '/')
abstract class WebParserApi extends ChopperService {
  @Get(path: '{username}/?__a=1')
  Future<Response> getProfileRetrieveFromParser(@Path() String username);

  static WebParserApi create() {
    final client = ChopperClient(
        client: http.IOClient(
          HttpClient()..connectionTimeout = const Duration(seconds: 60),
        ),
        baseUrl: 'https://www.instagram.com',
        services: [
          _$WebParserApi(),
        ],
        converter: JsonConverter(),
        interceptors: [
          HeadersInterceptor({'Content-Type': 'application/json'}),
          HttpLoggingInterceptor(),
        ]);
    return _$WebParserApi(client);
  }
}
