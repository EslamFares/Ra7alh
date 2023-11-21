import 'package:get_storage/get_storage.dart';

class GetStorageHelper {
  static final GetStorage _myData = GetStorage();

  static Future<void> writeData(String key, dynamic value) =>
      _myData.write(key, value);

  static readData(String key) => _myData.read(key);
  static checkHasData(String key) => _myData.hasData(key);
  static removeData(String key) => _myData.remove(key);

  static writeIfNull(String key, dynamic value) =>
      _myData.writeIfNull(key, value);

  static keyHasData(String key) => _myData.hasData(key);

  static getValues() => _myData.getValues();
  static eraseData() => _myData.erase();

  static writeDataInMemory(String key, dynamic value) =>
      _myData.writeInMemory(key, value);
}

//! in main 
  // WidgetsFlutterBinding.ensureInitialized();
  // await GetStorage.init();