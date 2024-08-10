import 'dart:convert';

import 'package:hireme/unified_api/exceptions.dart';
import 'package:http/http.dart';


mixin HandlingExceptionRequest {
  Exception getException({required Response response}) {
    final String message = json.decode(response.body)['message'];

    return ServerException(message: message);
  }
}
