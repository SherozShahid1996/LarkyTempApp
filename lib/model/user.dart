import 'dart:convert';

User userFromJson(String str) {
  final jsonData = json.decode(str);
  return User.fromJson(jsonData);
}

String userToJson(User data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class User {
  String userId;
  String firstName;
  String lastName;
  String email;
  String mobileNumber;
  String password;
  String imageUrl;

  User({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.mobileNumber,
    required this.imageUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) => new User(
      userId: json["userId"],
      firstName: json["firstName"],
      lastName: json["lastName"],
      email: json["email"],
      mobileNumber: json["mobileNumber"],
      imageUrl: '',
      password: '');

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
      };
}

CustomerLoginResult customerLoginResultFromJson(String str) {
  final jsonData = json.decode(str);

  return CustomerLoginResult.fromJson(jsonData);
}

String customerLoginResultToJson(CustomerLoginResult data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

CustomerLoginObject CustomerLoginObjectFromJson(String str) {
  final jsonData = json.decode(str);
  return CustomerLoginObject.fromJson(jsonData);
}

String CustomerLoginObjectToJson(CustomerLoginObject data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class CustomerLoginObject {
  String id;
  String Token;
  String Restaurantid;

  CustomerLoginObject(
      {required this.id, required this.Token, required this.Restaurantid});
  factory CustomerLoginObject.fromJson(Map<String, dynamic> json) {
    return CustomerLoginObject(
        id: json['Id'].toString(),
        Token: json['Token'].toString(),
        Restaurantid: json['Restaurant']['Id'].toString());
  }

  Map<String, dynamic> toJson() =>
      {"id": id, "Token": Token, "Restaurantid": Restaurantid};
}

class CustomerLoginResult {
  String message;
  bool status;
  String code;
  String Objects;

  CustomerLoginResult(
      {required this.message,
      required this.status,
      required this.code,
      required this.Objects});

  factory CustomerLoginResult.fromJson(Map<String, dynamic> json) {
    return CustomerLoginResult(
      message: json['message'].toString(),
      status: json['status'],
      code: json['code'].toString(),
      Objects: jsonEncode(json['objects']),
    );
  }

  Map<String, dynamic> toJson() => {
        "Message": message,
        "status": status,
        "Objects": Objects,
      };
}

class ErrorException {
  String Details;
  String Error;

  ErrorException({required this.Details, required this.Error});

  factory ErrorException.fromJson(Map<String, dynamic> json) {
    return ErrorException(
      Details: json['Details'].toString(),
      Error: json['Error'].toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        "Details": Details,
        "Error": Error,
      };
}

class CustomerSignUpResult {
  String message;
  String statusCode;

  CustomerSignUpResult({required this.message, required this.statusCode});

  factory CustomerSignUpResult.fromJson(Map<String, dynamic> json) {
    return CustomerSignUpResult(
      message: json['CustomerSignUpResult']['Message'].toString(),
      statusCode: json['CustomerSignUpResult']['StatusCode'].toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        "Message": message,
        "StatusCode": statusCode,
      };
}
