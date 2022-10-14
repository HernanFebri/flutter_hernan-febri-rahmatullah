import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class Myservice {
  final Dio dio = Dio();
}
class UserModel {
  late String? name;
  late String? job;

  UserModel({
    required this.name,
    required this.job,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'job': job,
    };
  }

  UserModel.fromJson(Map<String, dynamic> map) {
    name = map['name'];
    job = map['job'];
  }
}

Future GetUsers() async {
  try {
    final Response response = await dio.get('https://reqres.in/api/users%27);
    debugPrint(response.data.toString());
    return response.data;
  } catch (e) {
    rethrow;
  }
}

Future createUser({
  required String name,
  required String job,
}) async {
  try {
    final Response response = await dio.post(
      'https://reqres.in/api/users',
      data: {
        'name': name,
        'job': job,
      },
    );
    debugPrint(response.data.toString());

    final UserModel _usermodel = UserModel.fromJson(response.data);
    return response.data;
  } catch (e) {
    rethrow;
  }
}

Future updateUser({
  required String name,
  required String job,
}) async {
  try {
    final Response response = await dio.put(
      'https://reqres.in/api/users/4',
    );
    debugPrint(response.data.toString());

    return response.data;
  } catch (e) {
    rethrow;
  }
}

Future deleteUser() async {
  try {
    final Response response = await dio.delete(
      'https://reqres.in/api/users/4',
    );
    debugPrint(response.data.toString());

    return response.data;
  } catch (e) {
    rethrow;
  }
}