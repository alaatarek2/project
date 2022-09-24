import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'home_model.dart';

class HomeProvider with ChangeNotifier{
  HomeModel? data2;
  String? token;
  Future<dynamic>getAllData()async{
    var dio=Dio();
    dio.options.headers={
      "lang":"en",
      "Content-Type":"application/json",
      "Authorization":token,

    };


    final response= await dio.get("https://student.valuxapps.com/api/home");

    // print("res "+response.data['data']["products"].toString());

    data2=HomeModel.fromJson(response.data);
    notifyListeners();
  }

}