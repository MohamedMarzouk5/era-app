import 'package:advanced_app/app/constants.dart';
import 'package:advanced_app/data/response/responses.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  // auto generate app_api
//  data domain  في فيدوهات ال
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/customers/login")
  Future<AuthenticationResponse> login(
      @Field("email") String email, @Field("password") String password);
}
