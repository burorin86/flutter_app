import 'package:chopper/chopper.dart';
import 'dart:async';

part "api_client.chopper.dart";

@ChopperApi(baseUrl: '/api/user')
abstract class ApiClient extends ChopperService {

  static ApiClient create({required ChopperClient client}) => _$ApiClient(client);

  @Get(path: '/test')
  Future<Response> collApi({
    @Query('user_id') int userId = 1,
  });
}
