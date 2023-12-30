// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommandStruct extends FFFirebaseStruct {
  CommandStruct({
    String? costumerName,
    String? costumerEmail,
    String? model,
    String? color,
    String? size,
    int? numberOfPaire,
    double? priceTotal,
    double? payement,
    double? rest,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _costumerName = costumerName,
        _costumerEmail = costumerEmail,
        _model = model,
        _color = color,
        _size = size,
        _numberOfPaire = numberOfPaire,
        _priceTotal = priceTotal,
        _payement = payement,
        _rest = rest,
        super(firestoreUtilData);

  // "CostumerName" field.
  String? _costumerName;
  String get costumerName => _costumerName ?? '';
  set costumerName(String? val) => _costumerName = val;
  bool hasCostumerName() => _costumerName != null;

  // "CostumerEmail" field.
  String? _costumerEmail;
  String get costumerEmail => _costumerEmail ?? '';
  set costumerEmail(String? val) => _costumerEmail = val;
  bool hasCostumerEmail() => _costumerEmail != null;

  // "Model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;
  bool hasModel() => _model != null;

  // "Color" field.
  String? _color;
  String get color => _color ?? '';
  set color(String? val) => _color = val;
  bool hasColor() => _color != null;

  // "Size" field.
  String? _size;
  String get size => _size ?? '';
  set size(String? val) => _size = val;
  bool hasSize() => _size != null;

  // "NumberOfPaire" field.
  int? _numberOfPaire;
  int get numberOfPaire => _numberOfPaire ?? 0;
  set numberOfPaire(int? val) => _numberOfPaire = val;
  void incrementNumberOfPaire(int amount) =>
      _numberOfPaire = numberOfPaire + amount;
  bool hasNumberOfPaire() => _numberOfPaire != null;

  // "PriceTotal" field.
  double? _priceTotal;
  double get priceTotal => _priceTotal ?? 0.0;
  set priceTotal(double? val) => _priceTotal = val;
  void incrementPriceTotal(double amount) => _priceTotal = priceTotal + amount;
  bool hasPriceTotal() => _priceTotal != null;

  // "Payement" field.
  double? _payement;
  double get payement => _payement ?? 0.0;
  set payement(double? val) => _payement = val;
  void incrementPayement(double amount) => _payement = payement + amount;
  bool hasPayement() => _payement != null;

  // "Rest" field.
  double? _rest;
  double get rest => _rest ?? 0.0;
  set rest(double? val) => _rest = val;
  void incrementRest(double amount) => _rest = rest + amount;
  bool hasRest() => _rest != null;

  static CommandStruct fromMap(Map<String, dynamic> data) => CommandStruct(
        costumerName: data['CostumerName'] as String?,
        costumerEmail: data['CostumerEmail'] as String?,
        model: data['Model'] as String?,
        color: data['Color'] as String?,
        size: data['Size'] as String?,
        numberOfPaire: castToType<int>(data['NumberOfPaire']),
        priceTotal: castToType<double>(data['PriceTotal']),
        payement: castToType<double>(data['Payement']),
        rest: castToType<double>(data['Rest']),
      );

  static CommandStruct? maybeFromMap(dynamic data) =>
      data is Map ? CommandStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CostumerName': _costumerName,
        'CostumerEmail': _costumerEmail,
        'Model': _model,
        'Color': _color,
        'Size': _size,
        'NumberOfPaire': _numberOfPaire,
        'PriceTotal': _priceTotal,
        'Payement': _payement,
        'Rest': _rest,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CostumerName': serializeParam(
          _costumerName,
          ParamType.String,
        ),
        'CostumerEmail': serializeParam(
          _costumerEmail,
          ParamType.String,
        ),
        'Model': serializeParam(
          _model,
          ParamType.String,
        ),
        'Color': serializeParam(
          _color,
          ParamType.String,
        ),
        'Size': serializeParam(
          _size,
          ParamType.String,
        ),
        'NumberOfPaire': serializeParam(
          _numberOfPaire,
          ParamType.int,
        ),
        'PriceTotal': serializeParam(
          _priceTotal,
          ParamType.double,
        ),
        'Payement': serializeParam(
          _payement,
          ParamType.double,
        ),
        'Rest': serializeParam(
          _rest,
          ParamType.double,
        ),
      }.withoutNulls;

  static CommandStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommandStruct(
        costumerName: deserializeParam(
          data['CostumerName'],
          ParamType.String,
          false,
        ),
        costumerEmail: deserializeParam(
          data['CostumerEmail'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['Model'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['Color'],
          ParamType.String,
          false,
        ),
        size: deserializeParam(
          data['Size'],
          ParamType.String,
          false,
        ),
        numberOfPaire: deserializeParam(
          data['NumberOfPaire'],
          ParamType.int,
          false,
        ),
        priceTotal: deserializeParam(
          data['PriceTotal'],
          ParamType.double,
          false,
        ),
        payement: deserializeParam(
          data['Payement'],
          ParamType.double,
          false,
        ),
        rest: deserializeParam(
          data['Rest'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CommandStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CommandStruct &&
        costumerName == other.costumerName &&
        costumerEmail == other.costumerEmail &&
        model == other.model &&
        color == other.color &&
        size == other.size &&
        numberOfPaire == other.numberOfPaire &&
        priceTotal == other.priceTotal &&
        payement == other.payement &&
        rest == other.rest;
  }

  @override
  int get hashCode => const ListEquality().hash([
        costumerName,
        costumerEmail,
        model,
        color,
        size,
        numberOfPaire,
        priceTotal,
        payement,
        rest
      ]);
}

CommandStruct createCommandStruct({
  String? costumerName,
  String? costumerEmail,
  String? model,
  String? color,
  String? size,
  int? numberOfPaire,
  double? priceTotal,
  double? payement,
  double? rest,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CommandStruct(
      costumerName: costumerName,
      costumerEmail: costumerEmail,
      model: model,
      color: color,
      size: size,
      numberOfPaire: numberOfPaire,
      priceTotal: priceTotal,
      payement: payement,
      rest: rest,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CommandStruct? updateCommandStruct(
  CommandStruct? command, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    command
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCommandStructData(
  Map<String, dynamic> firestoreData,
  CommandStruct? command,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (command == null) {
    return;
  }
  if (command.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && command.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final commandData = getCommandFirestoreData(command, forFieldValue);
  final nestedData = commandData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = command.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCommandFirestoreData(
  CommandStruct? command, [
  bool forFieldValue = false,
]) {
  if (command == null) {
    return {};
  }
  final firestoreData = mapToFirestore(command.toMap());

  // Add any Firestore field values
  command.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCommandListFirestoreData(
  List<CommandStruct>? commands,
) =>
    commands?.map((e) => getCommandFirestoreData(e, true)).toList() ?? [];
