// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuOptionStruct extends FFFirebaseStruct {
  MenuOptionStruct({
    int? menuOption,
    int? subMenuOption,
    String? secaoNome,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _menuOption = menuOption,
        _subMenuOption = subMenuOption,
        _secaoNome = secaoNome,
        super(firestoreUtilData);

  // "menuOption" field.
  int? _menuOption;
  int get menuOption => _menuOption ?? 0;
  set menuOption(int? val) => _menuOption = val;

  void incrementMenuOption(int amount) => menuOption = menuOption + amount;

  bool hasMenuOption() => _menuOption != null;

  // "subMenuOption" field.
  int? _subMenuOption;
  int get subMenuOption => _subMenuOption ?? 0;
  set subMenuOption(int? val) => _subMenuOption = val;

  void incrementSubMenuOption(int amount) =>
      subMenuOption = subMenuOption + amount;

  bool hasSubMenuOption() => _subMenuOption != null;

  // "secaoNome" field.
  String? _secaoNome;
  String get secaoNome => _secaoNome ?? '';
  set secaoNome(String? val) => _secaoNome = val;

  bool hasSecaoNome() => _secaoNome != null;

  static MenuOptionStruct fromMap(Map<String, dynamic> data) =>
      MenuOptionStruct(
        menuOption: castToType<int>(data['menuOption']),
        subMenuOption: castToType<int>(data['subMenuOption']),
        secaoNome: data['secaoNome'] as String?,
      );

  static MenuOptionStruct? maybeFromMap(dynamic data) => data is Map
      ? MenuOptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'menuOption': _menuOption,
        'subMenuOption': _subMenuOption,
        'secaoNome': _secaoNome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'menuOption': serializeParam(
          _menuOption,
          ParamType.int,
        ),
        'subMenuOption': serializeParam(
          _subMenuOption,
          ParamType.int,
        ),
        'secaoNome': serializeParam(
          _secaoNome,
          ParamType.String,
        ),
      }.withoutNulls;

  static MenuOptionStruct fromSerializableMap(Map<String, dynamic> data) =>
      MenuOptionStruct(
        menuOption: deserializeParam(
          data['menuOption'],
          ParamType.int,
          false,
        ),
        subMenuOption: deserializeParam(
          data['subMenuOption'],
          ParamType.int,
          false,
        ),
        secaoNome: deserializeParam(
          data['secaoNome'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MenuOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MenuOptionStruct &&
        menuOption == other.menuOption &&
        subMenuOption == other.subMenuOption &&
        secaoNome == other.secaoNome;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([menuOption, subMenuOption, secaoNome]);
}

MenuOptionStruct createMenuOptionStruct({
  int? menuOption,
  int? subMenuOption,
  String? secaoNome,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MenuOptionStruct(
      menuOption: menuOption,
      subMenuOption: subMenuOption,
      secaoNome: secaoNome,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MenuOptionStruct? updateMenuOptionStruct(
  MenuOptionStruct? menuOptionStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    menuOptionStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMenuOptionStructData(
  Map<String, dynamic> firestoreData,
  MenuOptionStruct? menuOptionStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (menuOptionStruct == null) {
    return;
  }
  if (menuOptionStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && menuOptionStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final menuOptionStructData =
      getMenuOptionFirestoreData(menuOptionStruct, forFieldValue);
  final nestedData =
      menuOptionStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = menuOptionStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMenuOptionFirestoreData(
  MenuOptionStruct? menuOptionStruct, [
  bool forFieldValue = false,
]) {
  if (menuOptionStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(menuOptionStruct.toMap());

  // Add any Firestore field values
  menuOptionStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMenuOptionListFirestoreData(
  List<MenuOptionStruct>? menuOptionStructs,
) =>
    menuOptionStructs
        ?.map((e) => getMenuOptionFirestoreData(e, true))
        .toList() ??
    [];
