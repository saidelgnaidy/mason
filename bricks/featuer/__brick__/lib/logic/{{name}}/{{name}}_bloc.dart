import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:{{pro_name}}/data/repository/{{name}}/{{name}}_repo.dart';
import '{{name}}_state.dart';

class {{name.pascalCase()}}Bloc extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc({required this.{{name.camelCase()}}RepoImp}) : super(const {{name.pascalCase()}}State.initial());

  static {{name.pascalCase()}}Bloc of(BuildContext context) {
    return BlocProvider.of<{{name.pascalCase()}}Bloc>(context);
  }

  final {{name.pascalCase()}}RepoImp {{name.camelCase()}}RepoImp;
}
