import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GoogleLetsCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "type": "service_account",
  "project_id": "graficasagro",
  "private_key_id": "3b0e2ba0b1aa03f7c71afd1f3e2e749f3ca42592",
  "private_key": "-----BEGIN PRIVATE KEY-----\\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEy1w5jZQdKYsN\\nDQaH+BMSqHKG8x5M59K+x2N4B/hW0K3ziuiv4c6V7S/IIg/JgBI0HYA4TfCdz6nA\\nv6wxMUVWAkt8M/nIjgyWh7YdB4VTsRaCKNftZTclxveI4WjMciilNs/I0jSBZ+bZ\\nbcFE6LcIiUbVA0MaFmERaYRWHSmR/miB7UOYxgq98FrU3QWAxD9Uw1xNZKkA+5om\\n7Lne6781uVLbs7cYQEnYpe8q8yWK0CXg7Pr8gGWvTF3MRN+T+EYF66kRdBuyiDXI\\nBHVJzAkAhMsuMDNFKprC+qTu68jOe+xC0rpE+mkSmnisgFXfqKjuFNXJuseI15eh\\nv7FK1zCzAgMBAAECggEATjCakQdunPOfmuzc9nMbaONitbmtBVNqiYCBRfSsuBmr\\ns8MyVod6ZFlcDcFy0lW/ZdN+2WAmRR14TewaB2WTLew1f8DK8uN1nu2G7xvI3orS\\n7Z46xMjdU3YtbcZZtDl7asFPZ3QVhoD42NTh4HYyGwMoEIR+ScQwhxGMkgZ+ONHQ\\n2lNoWS6pPmGniBwnyw5/h1Z1bLIgYEtm/9KK1AO6ZI1p934hYmt/mC5EbV568xIJ\\nqhhHEKCfPnIjPApJa5oWj8M7p2yAaWKr09P0xaMyjgtr10bz0gpp7GlG5lyB2ssQ\\nYib772mkAwVMwB+D5Yk/1r4IpQXMnwGA7SJvFiIf6QKBgQDmWECyYc3HkxCrqo2s\\nDtG89l1ZpQZ73uWVqxp5FU6UyY0Z17J9qrnyUwr3TdsiQ4ACRJ3Dn7pbcp6yOHLs\\nbcSyIvvLtnI4DStuGp3Y9wbOfelh/yt2pUJY83otKbLjTqNlsfGVeloaiXd7D3rO\\n5Zlb8wluvNDWPeM5tDio2VlsVwKBgQDatn8hMyAnbsK4xdsQgPoGR0FmixMfZQAw\\nW+m+ZeDwfj6pTRIis7jgC0E9popMvkXvzDpw4IcAlPhzd8QXwzG3ytAOVEBtrhUC\\nNWkfH9WOf1zp60g6fIMLCBvtx8O7xZ6+puh1GbHNcVx8q5lVGgAllhZKvEWz27YB\\nyBiEFlylBQKBgGN9zPv/eJVyNSogsa6WfAslUm7M877/KKT70aRpCpcDc1mtK+BR\\npJ1BNyRYUYU8KIdSQd5kGGc1W8xYy3LJesMCj0WPGUiSj6awAmvbTupTwkFcqNZH\\nTSAEkkn9j9HUfokHUfShc1ew9pWFuyKwUww/LlzRW1aeRo3/BNYRgyljAoGAb4VI\\ns5wHFDRE88RnXDX3xwXEUk4t1P9CJmZnfF8kYFxvBRK4YZt0dEEo5g+qS1FmBc0E\\nK5RBIknTmcUC5v7vtgCjL/tD0ulF6xdi36zyzrMgpGIFNVVR2GktHISUyIUO2bXv\\np+4PHGtmNmelSqB0XLX37emsPPaWCriFz6w7VyUCgYEAulnf0EcTB8F9eVITRpyN\\nOuPG7371b2rvs3dUuZOaXv/7RwgpyytVeTieqBG3b/pOnf5LTbX3iSvwCvItSbrQ\\ngGX26ETMiTviFFKiMcGEJcPvfV4pb1JNYD0eCw3ARfB11GA6TPaSjkKF9lzoK77u\\ndjM98cVmXU53Rt9R1fZCdb0=\\n-----END PRIVATE KEY-----\\n",
  "client_email": "api-google-lents@graficasagro.iam.gserviceaccount.com",
  "client_id": "114138748928618374834",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/api-google-lents%40graficasagro.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'googleLets',
      apiUrl: 'api-google-lents@graficasagro.iam.gserviceaccount.com',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
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
