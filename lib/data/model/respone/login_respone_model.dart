import 'dart:convert';

class LoginResponeModel {
    final String? message;
    final int? statusCode;
    final Data? data;

    LoginResponeModel({
        this.message,
        this.statusCode,
        this.data,
    });

    factory LoginResponeModel.fromJson(String str) => LoginResponeModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory LoginResponeModel.fromMap(Map<String, dynamic> json) => LoginResponeModel(
        message: json["message"],
        statusCode: json["status_code"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "message": message,
        "status_code": statusCode,
        "data": data?.toMap(),
    };
}

class Data {
    final int? id;
    final String? name;
    final String? email;
    final String? role;
    final String? token;

    Data({
        this.id,
        this.name,
        this.email,
        this.role,
        this.token,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        role: json["role"],
        token: json["token"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "role": role,
        "token": token,
    };
}
