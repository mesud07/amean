import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../base/model/base_network_model.dart';
import '../base/base_local.dart';

class SharedManager {
  SharedPreferences? preferences;
  static SharedManager? _instance;
  SharedManager._init();

  static SharedManager? get instance {
    if (_instance == null) {
      _instance = SharedManager._init();
    }
    return _instance;
  }

  Future init() async {
    preferences = await SharedPreferences.getInstance();
  }

  Future<bool> saveStringValue(String key, String value) async {
    return await preferences!.setString(key.toString(), value);
  }

  Future<bool> saveIntValue(String key, int value) async {
    return await preferences!.setInt(key.toString(), value);
  }

  Future<bool> saveDoubleValue(String key, double value) async {
    return await preferences!.setDouble(key.toString(), value);
  }

  Future<bool> saveBooleanValue(String key, bool value) async {
    return await preferences!.setBool(key.toString(), value);
  }

  String? getStringValue(String key) {
    return preferences!.getString(key.toString());
  }

  int? getIntValue(String key) {
    return preferences!.getInt(key.toString());
  }

  double? getDoubleValue(String key) {
    return preferences!.getDouble(key.toString());
  }

  bool? getBooleanValue(String key) {
    return preferences!.getBool(key.toString());
  }

  Future<bool?> setJsonModel<T>(String key, T model, Duration? duration) async {
    if (duration == null) {
      return false;
    } else {
      BaseLocal local =
          BaseLocal(model: model, time: DateTime.now().add(duration));
      var json = jsonEncode(local);
      if (model != null && json.isNotEmpty) {
        return await preferences!.setString(key.toString(), json);
      }
      return false;
    }
  }

  dynamic getJsonModel<T extends BaseNetworkModel?>(T model, String key) async {
    var jsonString = preferences?.getString(key.toString());
    if (jsonString != null) {
      var jsonModel = jsonDecode(jsonString);
      final baseLocalModel = BaseLocal.fromJson(jsonModel);
      if (DateTime.now().isBefore(baseLocalModel.time!)) {
        Map<String, dynamic> data = BaseLocal.fromJson(jsonModel).model;
        return model?.fromJson(data);
      } else {
        await removeModel(key);
      }
    }
    return null;
  }

  Future<bool> removeModel(String key) async {
    return await preferences!.remove(key);
  }

  Set<String>? getKeys() {
    Set<String>? keyList = preferences?.getKeys();
    return keyList;
  }
}
