import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/models/errors/422/error_422_model.dart';
import 'package:{{name}}/di.dart';
import 'package:{{name}}/logic/global/api_client/api_client_state.dart';
import 'package:{{name}}/shared/api_client/connection_ckecker.dart';
import 'package:{{name}}/shared/cache/locale_storage.dart';
import 'package:{{name}}/shared/error/failuers.dart';

class ApiClientBloc extends Cubit<ApiClientState> {
  ApiClientBloc() : super(const ApiClientState.initial());

  static ApiClientBloc of(BuildContext context) {
    return BlocProvider.of<ApiClientBloc>(context);
  }

  Future<void> onErrorCallBack(DioError error) async {
    emit(const ApiClientState.initial());

    if (error.type == DioErrorType.response && error.response!.statusCode == 401) {
      emit(const ApiClientState.error(failure: KFailure.userLogetOut()));
    } else if (error.error is SocketException) {
      emit(const ApiClientState.error(failure: KFailure.offline()));
    } else {
      emit(const ApiClientState.error(failure: KFailure.someThingWrongPleaseTryagain()));
    }
  }

  onResponseCallBack(Response<dynamic> response) {
    emit(const ApiClientState.initial());

    if (response.statusCode == 200) {
      return;
    } else if (response.statusCode == 404) {
      emit(const ApiClientState.error(failure: KFailure.someThingWrongPleaseTryagain()));
    } else if (response.statusCode == 500) {
      emit(const ApiClientState.error(failure: KFailure.server()));
    } else if (response.statusCode == 401) {
      emit(ApiClientState.error(failure: KFailure.error401(error: response.data['message'])));
    } else if (response.statusCode == 403) {
      emit(ApiClientState.error(failure: KFailure.error403(error: response.data['message'])));
    } else if (response.statusCode == 409) {
      emit(ApiClientState.error(failure: KFailure.error409(error: response.data['message'])));
    } else if (response.statusCode == 422) {
      emit(ApiClientState.error(failure: KFailure.error422(error422model: Error422Model.fromJson(response.data))));
    } else {
      emit(const ApiClientState.error(failure: KFailure.someThingWrongPleaseTryagain()));
    }
  }

  onRequestCallBack(RequestOptions request) {
    final token = KStorage.i.getToken;
    final language = KStorage.i.getLang ?? "en";
    request.headers.addAll({'Authorization': "Bearer $token"});
    request.headers.addAll({"lang": language});
  }

  Future<Response> scheduleRetry(RequestOptions options) {
    final responseConpleter = Completer<Response>();
    late StreamSubscription subscription;
    debugPrint('================= Schedule Retry For: ${options.path} ');
    emit(const ApiClientState.error(failure: KFailure.offline()));

    subscription = ConnectivityCheck.connetionStream.listen((event) {
      if (event != ConnectivityResult.none) {
        responseConpleter.complete(
          Di.dioClient.request(
            options.path,
            cancelToken: options.cancelToken,
            data: options.data,
            onReceiveProgress: options.onReceiveProgress,
            onSendProgress: options.onSendProgress,
            params: options.queryParameters,
          ),
        );
        subscription.cancel();
      }
    });
    return responseConpleter.future;
  }
}
