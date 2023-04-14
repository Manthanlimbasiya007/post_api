
import 'package:flutter/material.dart';
import 'package:post_api/utils/api_helper.dart';

class HomeProvider extends ChangeNotifier
{
  Future<String> postData()
  async{
    ApiHelper apiHelper = ApiHelper();
    String msg = await apiHelper.addNewProductAoi();
    return msg;
  }
}