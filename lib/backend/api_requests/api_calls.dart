import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';


export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GasPriceCall {
  static Future<ApiCallResponse> call({
    String? zip = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'gasPrice',
      apiUrl:
          'https://zylalabs.com/api/4808/gas+price+locator+api/5997/get+prices',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer 7361|Z4aJCI7JElFMfJw43llD6A48DIUd5uFz78WxPUmk',
      },
      params: {
        'type': "regular",
        'zip': zip,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? gasStationList(dynamic response) => getJsonField(
        response,
        r'''$.gas_prices''',
        true,
      ) as List?;
}

class GeocodingCall {
  static Future<ApiCallResponse> call({
    String? address = '1600 Amphitheatre Parkway, Mountain View, CA',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'geocoding ',
      apiUrl: 'https://maps.googleapis.com/maps/api/geocode/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyDd0t06TpTCrPqPbb4Qp72yL9QVhc2HtIw",
        'address': address,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? lat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.results[:].geometry.location.lat''',
      ));
  static double? lng(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.results[:].geometry.location.lng''',
      ));
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
