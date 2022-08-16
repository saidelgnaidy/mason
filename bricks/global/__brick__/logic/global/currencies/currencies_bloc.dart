import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/models/global/currencies/currencies_model.dart';
import 'package:{{name}}/data/repository/global/global_repo.dart';
import 'package:{{name}}/logic/global/currencies/currencies_state.dart';
import 'package:{{name}}/shared/cache/locale_storage.dart';
import 'package:{{name}}/shared/error/failuers.dart';
import 'package:{{name}}/shared/localization/trans.dart';

class CurrenciesBloc extends Cubit<CurrenciesState> {
  CurrenciesBloc({required this.globalRepoImpl}) : super(const CurrenciesState.initial());

  static CurrenciesBloc of(BuildContext context) {
    return BlocProvider.of<CurrenciesBloc>(context);
  }

  final GlobalRepoImpl globalRepoImpl;
  String? selectedCurrency;

  CurrenciesModel? currenciesModel;
  Future getCurrencies() async {
    emit(const CurrenciesState.loading());
    try {
      final result = await globalRepoImpl.getCurrencies();
      result.fold(
        (l) {
          debugPrint('================= Get Currencies: $l ');

          emit(CurrenciesState.error(error: KFailure.failureToMSG(l)));
        },
        (r) {
          currenciesModel = r;
          emit(CurrenciesState.success(model: r, currencyDatum: selectedCurrency));
        },
      );
    } catch (e) {
      debugPrint('================= Get Currencies Error: $e  ');
      emit(CurrenciesState.error(error: Tr.get.something_went_wrong));
    }
  }

  selectCurrency(String? currencyDatum) {
    KStorage.i.setCurrency(currencyDatum!);
    selectedCurrency = currencyDatum;
    emit(CurrenciesState.success(currencyDatum: currencyDatum, model: currenciesModel!));
    saveCurrencieId(currenciesModel?.data?.where((element) => element.symbols == currencyDatum).first.id ?? 2);
  }

  saveCurrencieId(int id) {
    debugPrint('================= CurrencieId id  : $id ');
    KStorage.i.setCurrencyId(id);
  }
}
