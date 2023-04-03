// To parse this JSON data, do
//
//     final commonResult = commonResultFromJson(jsonString);

import 'dart:convert';

CommonResult commonResultFromJson(String str) =>
    CommonResult.fromJson(json.decode(str));

String commonResultToJson(CommonResult data) => json.encode(data.toJson());

class CommonResult {
  CommonResult({
    required this.message,
    required this.status,
    required this.objects,
    required this.code,
    this.id,
  });

  String message;
  bool status;
  String objects;
  int code;
  dynamic id;

  factory CommonResult.fromJson(Map<String, dynamic> json) => CommonResult(
        message: json["message"],
        status: json["status"],
        objects: json["objects"],
        code: json["code"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
        "objects": objects,
        "code": code,
        "id": id,
      };
}
