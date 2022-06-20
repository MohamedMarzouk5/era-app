import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

// @JsonSerializable() from json & to json علشان ده اللي هيعمله
@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numOfNotifications")
  int? numOfNotifications;

  CustomerResponse(this.id, this.name, this.numOfNotifications);

  // from json
  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ContactsResponse {
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "link")
  String? link;

  ContactsResponse(this.phone, this.email, this.link);

  // from json
  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$ContactsResponseToJson(this);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: "customer")
  CustomerResponse? customer;
  @JsonKey(name: "contacts")
  ContactsResponse? contacts;

  AuthenticationResponse(this.customer, this.contacts);

  // from json
  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);

// to json
  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}

// responses.g.dart  الخطوات علشان تعمل ال
// pub spec اهم حاجه تتشك علي ال
// retrofit_generator: ^4.0.1
// build_runner: ^2.1.7
//   retrofit: ^3.0.1+1
// analyzer: ^3.3.1
// json_serializable: ^6.1.4

// 1-in terminal flutter packages pub run build_runner build --delete-conflicting-outputs
// 2-part 'responses.g.dart'; هتعملها هنا
// 3-flutter packages pub run build_runner build --delete-conflicting-outputs

//  android stadio لو متعملتش هتفتح ال
// 2-File => Invalidate caches / Restart
// 3-flutter clean
// 4-flutter pub get
// 5-flutter packages pub run build_runner build --delete-conflicting-outputs
// 6-part 'app_api.g.dart';
// 7-flutter packages pub run build_runner build --delete-conflicting-outputs
