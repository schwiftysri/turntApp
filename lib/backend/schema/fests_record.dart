import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FestsRecord extends FirestoreRecord {
  FestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "proshowsDescription" field.
  String? _proshowsDescription;
  String get proshowsDescription => _proshowsDescription ?? '';
  bool hasProshowsDescription() => _proshowsDescription != null;

  // "eventsDescription" field.
  String? _eventsDescription;
  String get eventsDescription => _eventsDescription ?? '';
  bool hasEventsDescription() => _eventsDescription != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  // "proshowsDates" field.
  String? _proshowsDates;
  String get proshowsDates => _proshowsDates ?? '';
  bool hasProshowsDates() => _proshowsDates != null;

  // "eventsDates" field.
  String? _eventsDates;
  String get eventsDates => _eventsDates ?? '';
  bool hasEventsDates() => _eventsDates != null;

  // "organisersPassword" field.
  String? _organisersPassword;
  String get organisersPassword => _organisersPassword ?? '';
  bool hasOrganisersPassword() => _organisersPassword != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _logo = snapshotData['logo'] as String?;
    _description = snapshotData['description'] as String?;
    _proshowsDescription = snapshotData['proshowsDescription'] as String?;
    _eventsDescription = snapshotData['eventsDescription'] as String?;
    _year = snapshotData['year'] as String?;
    _proshowsDates = snapshotData['proshowsDates'] as String?;
    _eventsDates = snapshotData['eventsDates'] as String?;
    _organisersPassword = snapshotData['organisersPassword'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fests');

  static Stream<FestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FestsRecord.fromSnapshot(s));

  static Future<FestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FestsRecord.fromSnapshot(s));

  static FestsRecord fromSnapshot(DocumentSnapshot snapshot) => FestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFestsRecordData({
  String? name,
  String? logo,
  String? description,
  String? proshowsDescription,
  String? eventsDescription,
  String? year,
  String? proshowsDates,
  String? eventsDates,
  String? organisersPassword,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'logo': logo,
      'description': description,
      'proshowsDescription': proshowsDescription,
      'eventsDescription': eventsDescription,
      'year': year,
      'proshowsDates': proshowsDates,
      'eventsDates': eventsDates,
      'organisersPassword': organisersPassword,
    }.withoutNulls,
  );

  return firestoreData;
}

class FestsRecordDocumentEquality implements Equality<FestsRecord> {
  const FestsRecordDocumentEquality();

  @override
  bool equals(FestsRecord? e1, FestsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.logo == e2?.logo &&
        e1?.description == e2?.description &&
        e1?.proshowsDescription == e2?.proshowsDescription &&
        e1?.eventsDescription == e2?.eventsDescription &&
        e1?.year == e2?.year &&
        e1?.proshowsDates == e2?.proshowsDates &&
        e1?.eventsDates == e2?.eventsDates &&
        e1?.organisersPassword == e2?.organisersPassword;
  }

  @override
  int hash(FestsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.logo,
        e?.description,
        e?.proshowsDescription,
        e?.eventsDescription,
        e?.year,
        e?.proshowsDates,
        e?.eventsDates,
        e?.organisersPassword
      ]);

  @override
  bool isValidKey(Object? o) => o is FestsRecord;
}
