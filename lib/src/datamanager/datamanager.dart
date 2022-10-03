import 'package:agrostreetfindertwo/src/models/field_model.dart';
import 'package:agrostreetfindertwo/src/models/lot_model.dart';

class DataManager {
  DataManager._(); //Constructor privado

  static final DataManager _instance = DataManager._();

  static DataManager get instance => _instance;

  factory DataManager(){
    return _instance;
  }

  void loadField(FieldModel fieldModel){}
  void deleteField(FieldModel fieldModel){}
  void showField(FieldModel fieldModel){}
  void modifyField(FieldModel fieldModel){}
  void loadLot(LotModel lotModel){}
  void deleteLot(LotModel lotModel){}
  void showLot(LotModel lotModel){}
  void modifyLot(LotModel lotModel){}
}
