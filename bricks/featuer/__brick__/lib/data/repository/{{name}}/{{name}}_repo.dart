import 'package:{{pro_name}}/data/models/{{name}}/{{name}}_model.dart';
import 'package:{{pro_name}}/shared/api_client/api_clien_helper.dart';
import 'package:{{pro_name}}/shared/api_client/endpoints.dart';
import 'package:{{pro_name}}/shared/error/failuers.dart';
import 'package:{{pro_name}}/di.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';



abstract class {{name.pascalCase()}}RepoAbs {
  Future<Either<KFailure, {{name.pascalCase()}}Model>> get_{{name}}();
}

class {{name.pascalCase()}}RepoImp implements {{name.pascalCase()}}RepoAbs {
  
  @override
  Future<Either<KFailure, {{name.pascalCase()}}Model>> get_{{name}}() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoinst.get_{{name}});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right({{name.pascalCase()}}Model.fromJson(r)),
    );
  }

}
