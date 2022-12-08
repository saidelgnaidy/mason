import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/{{name}}/{{name}}_model.dart';
import '../../data/repository/{{name}}/{{name}}_repo.dart';
import '../../shared/error/failures.dart';
import '../../shared/localization/trans.dart';
import '{{name}}_state.dart';

class {{name.pascalCase()}}Bloc extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc({required this.{{name.camelCase()}}RepoImp}) : super(const {{name.pascalCase()}}State.loading());

  static {{name.pascalCase()}}Bloc of(BuildContext context) => BlocProvider.of<{{name.pascalCase()}}Bloc>(context);


  final {{name.pascalCase()}}RepoImp {{name.camelCase()}}RepoImp;
  {{name.pascalCase()}}Model? {{name.camelCase()}}Model;

  get() async {
    try {
      emit(const {{name.pascalCase()}}State.loading());
      final result = await {{name.camelCase()}}RepoImp.get();
      result.fold(
        (l) {
          debugPrint('================= {{name.pascalCase()}} Bloc : ${KFailure.toError(l)}');
          emit({{name.pascalCase()}}State.error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= {{name.pascalCase()}} Bloc : ${r.toString()}  ');
          {{name.camelCase()}}Model = r;
          emit(const {{name.pascalCase()}}State.success());
        },
      );
    } catch (e) {
      debugPrint('================= {{name.pascalCase()}} Bloc (Catch): ${e.toString()} ');
      emit({{name.pascalCase()}}State.error(error: Tr.get.something_went_wrong));
    }
  }
}
