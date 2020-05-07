

import 'dart:convert';

import 'package:TravelFix/modules/services/http/Api.dart';
import 'package:TravelFix/modules/services/platform/Platform.dart';
import 'package:TravelFix/src/providers/request_services/query/PageQuery.dart';
import 'package:TravelFix/src/providers/request_services/response/ResponseListData.dart';

class ApiPost {
  static Future<ResponseListData> fetchPosts({PageQuery query}) {
    var url = Platform().shared.baseUrl + "posts";
    return Api.requestGetPaging(url, query).then((data) {
      return ResponseListData(json.decode(data.json), data.error);
    });
  }

  

  
}