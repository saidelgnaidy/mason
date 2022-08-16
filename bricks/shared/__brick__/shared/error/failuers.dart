import 'package:{{name}}/data/models/errors/422/error_422_model.dart';
import 'package:{{name}}/shared/localization/trans.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failuers.freezed.dart';

@freezed
abstract class KFailure with _$KFailure {
  const factory KFailure.server() = KFailureServer;
  const factory KFailure.offline() = KFailureOffline;
  const factory KFailure.userNotFound() = KFailureUserNotFound;
  const factory KFailure.locationDenaid() = KFailureLocationDenaid;
  const factory KFailure.locationDiabled() = KFailureLocationDiabled;
  const factory KFailure.locationDenaidPermenetl() = KFailureLocationDenaidPermenetl;
  const factory KFailure.userLogetOut() = KFailureUserLogedOut;
  const factory KFailure.someThingWrongPleaseTryagain() = KFailureSomeThingWrongPleaseTryagain;
  const factory KFailure.unknownNetIssue() = KFailureUnknownNetIssue;
  const factory KFailure.error(String error) = KFailureDecodingResponse;
  const factory KFailure.error422({required Error422Model error422model}) = KFailureError422;
  const factory KFailure.error401({required String error}) = KFailureError401;
  const factory KFailure.error403({required String error}) = KFailureError403;
  const factory KFailure.error409({required String error}) = KFailureError204;

  static String failureToMSG(KFailure failure) {
    return failure.when(
      server: () => Tr.get.try_later,
      offline: () => Tr.get.no_connection,
      userNotFound: () => Tr.get.user_not_found,
      locationDenaid: () => Tr.get.location_denaid,
      locationDiabled: () => Tr.get.location_disabled,
      locationDenaidPermenetl: () => Tr.get.location_denaid_permanently,
      userLogetOut: () => Tr.get.userLogedOut,
      someThingWrongPleaseTryagain: () => Tr.get.try_later,
      unknownNetIssue: () => Tr.get.unKnown_network_issue,
      error: (error) => error,
      error422: (errorModel) => List<List<String>>.from(errorModel.errors.values).map((e) => e.first).toString(),
      error401: (error) => error,
      error409: (error) => error,
      error403: (error) => error,
    );
  }
}
// flutter pub run build_runner watch --delete-conflicting-outputs 
