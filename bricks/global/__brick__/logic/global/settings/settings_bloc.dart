import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/models/global/settings/settings_model.dart';
import 'package:{{name}}/data/repository/global/global_repo.dart';
import 'package:{{name}}/logic/global/settings/settings_state.dart';
import 'package:{{name}}/shared/error/failuers.dart';
import 'package:{{name}}/shared/localization/trans.dart';

class SettingsBloc extends Cubit<SettingsState> {
  SettingsBloc({required this.globalRepoImpl}) : super(const SettingsState.initial());

  static SettingsBloc of(BuildContext context) {
    return BlocProvider.of<SettingsBloc>(context);
  }

  final GlobalRepoImpl globalRepoImpl;
  SettingsModel? settingsModel;
  Future getSettings() async {
    emit(const SettingsState.loading());
    try {
      final result = await globalRepoImpl.getSettings();
      result.fold(
        (l) {
          emit(SettingsState.error(error: KFailure.failureToMSG(l)));
          debugPrint('================= Settings (Bloc) : $l  ');
        },
        (r) {
          settingsModel = r;
          emit(SettingsState.success(model: r));
          debugPrint('================= ${r.toJson()} : ');
        },
      );
    } catch (e) {
      debugPrint('================= Settings (Bloc) (catch) : $e  ');
      emit(SettingsState.error(error: Tr.get.something_went_wrong));
    }
  }
}
