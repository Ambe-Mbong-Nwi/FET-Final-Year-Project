import 'package:get_storage/get_storage.dart';

class ALocalStorage {
  static final ALocalStorage _instance = ALocalStorage._internal();

  factory ALocalStorage() {
    return _instance;
  }

  ALocalStorage._internal();

  final _storage = GetStorage();

  //Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //Generic method to rad data
  A? readData<A>(String key) {
    return _storage.read<A>(key);
  }

  //Generic method to remove data
  Future<void> removeData<T>(String key) async {
    await _storage.remove(key);
  }

  //clear all dtat in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
