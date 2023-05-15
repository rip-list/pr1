import 'package:pr1_models/pr_model.dart';
import 'package:pr1_services/data_models/dbpr1.dart';
import 'package:pr1_services/database.dart';

class  Pr1Repositories {
  Future<void> addItem(PrModel pr ) async{
    await DBProvaider.db.addItem(DBpr( 
      id: pr.id,
      nickname: pr.nickname,
      description: pr.description,
    ),
    );

  }
}