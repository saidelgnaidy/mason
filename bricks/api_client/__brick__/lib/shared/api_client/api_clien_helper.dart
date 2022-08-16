import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:{{name}}/data/models/errors/422/error_422_model.dart';
import 'package:{{name}}/shared/api_client/connection_ckecker.dart';
import 'package:{{name}}/shared/error/failuers.dart';

abstract class ApiClientHelper {
  static Future<Either<KFailure, dynamic>> responseToModel({required Future<Response<dynamic>> func}) async {
    if (await ConnectivityCheck.call()) {
      try {
        final response = await func;
        //log(response.data.toString());

        if (response.statusCode == 200) {
          return right(response.data);
        } else if (response.statusCode == 409) {
          return left(KFailure.error409(error: response.data['message']));
        } else if (response.statusCode == 422) {
          return left(KFailure.error422(error422model: Error422Model.fromJson(response.data)));
        } else if (response.statusCode == 403) {
          return left(KFailure.error401(error: response.data['message']));
        } else if (response.statusCode == 401) {
          return left(KFailure.error401(error: response.data['message']));
        } else if (response.statusCode == 500) {
          return left(const KFailure.server());
        } else {
          return left(const KFailure.someThingWrongPleaseTryagain());
        }
      } on DioError catch (e) {
        debugPrint('================= ${e.message} : ');
        switch (e.type) {
          case DioErrorType.connectTimeout:
            return left(const KFailure.error("Request Time out"));
          case DioErrorType.receiveTimeout:
            return left(const KFailure.error("Receive Time out"));
          case DioErrorType.other:
            if (e.error != null && e.error is SocketException) {
              return left(const KFailure.offline());
            } else {
              debugPrint('================= 2 : ');
              return left(const KFailure.someThingWrongPleaseTryagain());
            }
          default:
            debugPrint('================= 3 : ');
            return left(const KFailure.someThingWrongPleaseTryagain());
        }
      } catch (e) {
        debugPrint('================= 4 : ');
        return left(const KFailure.someThingWrongPleaseTryagain());
      }
    } else {
      return left(const KFailure.offline());
    }
  }
}
