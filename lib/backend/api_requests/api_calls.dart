import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ESLstudentstestCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? nome = '',
    String? nivel = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ESLstudentstest',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:t0AfwBMW/esl_students_test/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Nome''',
      ));
  static String? nivel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nivel.Niveis''',
      ));
}

class StudentsInformationCall {
  static Future<ApiCallResponse> call({
    int? eslNiveisId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'StudentsInformation',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:t0AfwBMW/esl_niveis/{esl_niveis_id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NivelCall {
  static Future<ApiCallResponse> call({
    int? eslNiveisId = 1,
    String? nivel = '',
    String? descricao = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Nivel ',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:t0AfwBMW/esl_niveis/${eslNiveisId}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nivel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Niveis''',
      ));
  static String? descricao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Descricao''',
      ));
}

class CadastroNovoAlunoCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? eMail = '',
    int? nivel,
    String? objetivo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Nome": ${nome == null ? 'null' : '"${escapeStringForJson(nome)}"'},
  "Email": ${eMail == null ? 'null' : '"${escapeStringForJson(eMail)}"'},
  "esl_niveis_id": ${nivel == null ? 'null' : '"${nivel}"'},
  "ObjetivodoAluno": ${objetivo == null ? 'null' : '"${escapeStringForJson(objetivo)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CadastroNovoAluno',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:t0AfwBMW/esl_students_test',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  final encoded = jsonEncode(input);
  return encoded.substring(1, encoded.length - 1);
}
