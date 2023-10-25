import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _cartsum = await secureStorage.getDouble('ff_cartsum') ?? _cartsum;
    });
    await _safeInitAsync(() async {
      _color = await secureStorage.getString('ff_color') ?? _color;
    });
    await _safeInitAsync(() async {
      _favorite = (await secureStorage.getStringList('ff_favorite'))
              ?.map((path) => path.ref)
              .toList() ??
          _favorite;
    });
    await _safeInitAsync(() async {
      _cart = (await secureStorage.getStringList('ff_cart'))
              ?.map((path) => path.ref)
              .toList() ??
          _cart;
    });
    await _safeInitAsync(() async {
      _Qty = await secureStorage.getInt('ff_Qty') ?? _Qty;
    });
    await _safeInitAsync(() async {
      _cartUsed = (await secureStorage.getStringList('ff_cartUsed'))
              ?.map((path) => path.ref)
              .toList() ??
          _cartUsed;
    });
    await _safeInitAsync(() async {
      _UsedFavorite = (await secureStorage.getStringList('ff_UsedFavorite'))
              ?.map((path) => path.ref)
              .toList() ??
          _UsedFavorite;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  double _cartsum = 0;
  double get cartsum => _cartsum;
  set cartsum(double _value) {
    _cartsum = _value;
    secureStorage.setDouble('ff_cartsum', _value);
  }

  void deleteCartsum() {
    secureStorage.delete(key: 'ff_cartsum');
  }

  String _color = '';
  String get color => _color;
  set color(String _value) {
    _color = _value;
    secureStorage.setString('ff_color', _value);
  }

  void deleteColor() {
    secureStorage.delete(key: 'ff_color');
  }

  bool _searchonof = false;
  bool get searchonof => _searchonof;
  set searchonof(bool _value) {
    _searchonof = _value;
  }

  List<DocumentReference> _favorite = [];
  List<DocumentReference> get favorite => _favorite;
  set favorite(List<DocumentReference> _value) {
    _favorite = _value;
    secureStorage.setStringList(
        'ff_favorite', _value.map((x) => x.path).toList());
  }

  void deleteFavorite() {
    secureStorage.delete(key: 'ff_favorite');
  }

  void addToFavorite(DocumentReference _value) {
    _favorite.add(_value);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  void removeFromFavorite(DocumentReference _value) {
    _favorite.remove(_value);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  void removeAtIndexFromFavorite(int _index) {
    _favorite.removeAt(_index);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  void updateFavoriteAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _favorite[_index] = updateFn(_favorite[_index]);
    secureStorage.setStringList(
        'ff_favorite', _favorite.map((x) => x.path).toList());
  }

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> _value) {
    _cart = _value;
    secureStorage.setStringList('ff_cart', _value.map((x) => x.path).toList());
  }

  void deleteCart() {
    secureStorage.delete(key: 'ff_cart');
  }

  void addToCart(DocumentReference _value) {
    _cart.add(_value);
    secureStorage.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void removeFromCart(DocumentReference _value) {
    _cart.remove(_value);
    secureStorage.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void removeAtIndexFromCart(int _index) {
    _cart.removeAt(_index);
    secureStorage.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  void updateCartAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _cart[_index] = updateFn(_cart[_index]);
    secureStorage.setStringList('ff_cart', _cart.map((x) => x.path).toList());
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
  }

  int _Qty = 0;
  int get Qty => _Qty;
  set Qty(int _value) {
    _Qty = _value;
    secureStorage.setInt('ff_Qty', _value);
  }

  void deleteQty() {
    secureStorage.delete(key: 'ff_Qty');
  }

  List<DocumentReference> _cartUsed = [];
  List<DocumentReference> get cartUsed => _cartUsed;
  set cartUsed(List<DocumentReference> _value) {
    _cartUsed = _value;
    secureStorage.setStringList(
        'ff_cartUsed', _value.map((x) => x.path).toList());
  }

  void deleteCartUsed() {
    secureStorage.delete(key: 'ff_cartUsed');
  }

  void addToCartUsed(DocumentReference _value) {
    _cartUsed.add(_value);
    secureStorage.setStringList(
        'ff_cartUsed', _cartUsed.map((x) => x.path).toList());
  }

  void removeFromCartUsed(DocumentReference _value) {
    _cartUsed.remove(_value);
    secureStorage.setStringList(
        'ff_cartUsed', _cartUsed.map((x) => x.path).toList());
  }

  void removeAtIndexFromCartUsed(int _index) {
    _cartUsed.removeAt(_index);
    secureStorage.setStringList(
        'ff_cartUsed', _cartUsed.map((x) => x.path).toList());
  }

  void updateCartUsedAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _cartUsed[_index] = updateFn(_cartUsed[_index]);
    secureStorage.setStringList(
        'ff_cartUsed', _cartUsed.map((x) => x.path).toList());
  }

  List<DocumentReference> _UsedFavorite = [];
  List<DocumentReference> get UsedFavorite => _UsedFavorite;
  set UsedFavorite(List<DocumentReference> _value) {
    _UsedFavorite = _value;
    secureStorage.setStringList(
        'ff_UsedFavorite', _value.map((x) => x.path).toList());
  }

  void deleteUsedFavorite() {
    secureStorage.delete(key: 'ff_UsedFavorite');
  }

  void addToUsedFavorite(DocumentReference _value) {
    _UsedFavorite.add(_value);
    secureStorage.setStringList(
        'ff_UsedFavorite', _UsedFavorite.map((x) => x.path).toList());
  }

  void removeFromUsedFavorite(DocumentReference _value) {
    _UsedFavorite.remove(_value);
    secureStorage.setStringList(
        'ff_UsedFavorite', _UsedFavorite.map((x) => x.path).toList());
  }

  void removeAtIndexFromUsedFavorite(int _index) {
    _UsedFavorite.removeAt(_index);
    secureStorage.setStringList(
        'ff_UsedFavorite', _UsedFavorite.map((x) => x.path).toList());
  }

  void updateUsedFavoriteAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _UsedFavorite[_index] = updateFn(_UsedFavorite[_index]);
    secureStorage.setStringList(
        'ff_UsedFavorite', _UsedFavorite.map((x) => x.path).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
