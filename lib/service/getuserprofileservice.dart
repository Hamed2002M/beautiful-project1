import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project1univ/main.dart';
import 'package:project1univ/models/profilemodel.dart';
import "package:http/http.dart" as http;

class GetUserProfileService {
Future<Map<ProfileModel, dynamic>> getUserProfile() async {
  try {
    http.Response response = await http.get(
      Uri.parse("$url/ProfileClient"),
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token",
      },
    );

    if (response.statusCode == 200) {
      
      Map<String, dynamic> responseData = jsonDecode(response.body);
      ProfileModel profileModel = ProfileModel.fromJson(responseData);
      Map<ProfileModel, dynamic> result = {profileModel: responseData};
      print(result);
      return result;
    } else {
      return {};
    }
  } catch (e) {
    print(e);
    return {};
  }
  
}

}