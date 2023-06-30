import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProshowsRegisteredRecord extends FirestoreRecord {
  ProshowsRegisteredRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "ProName" field.
  String? _proName;
  String get proName => _proName ?? '';
  bool hasProName() => _proName != null;

  // "festName" field.
  String? _festName;
  String get festName => _festName ?? '';
  bool hasFestName() => _festName != null;

  // "festYear" field.
  String? _festYear;
  String get festYear => _festYear ?? '';
  bool hasFestYear() => _festYear != null;

  // "venue" field.
  String? _venue;
  String get venue => _venue ?? '';
  bool hasVenue() => _venue != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _details = snapshotData['details'] as String?;
    _proName = snapshotData['ProName'] as String?;
    _festName = snapshotData['festName'] as String?;
    _festYear = snapshotData['festYear'] as String?;
    _venue = snapshotData['venue'] as String?;
    _time = snapshotData['time'] as String?;
    _date = snapshotData['Date'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('proshowsRegistered')
          : FirebaseFirestore.instance.collectionGroup('proshowsRegistered');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('proshowsRegistered').doc();

  static Stream<ProshowsRegisteredRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProshowsRegisteredRecord.fromSnapshot(s));

  static Future<ProshowsRegisteredRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ProshowsRegisteredRecord.fromSnapshot(s));

  static ProshowsRegisteredRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProshowsRegisteredRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProshowsRegisteredRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProshowsRegisteredRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProshowsRegisteredRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProshowsRegisteredRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProshowsRegisteredRecordData({
  String? name,
  String? details,
  String? proName,
  String? festName,
  String? festYear,
  String? venue,
  String? time,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'details': details,
      'ProName': proName,
      'festName': festName,
      'festYear': festYear,
      'venue': venue,
      'time': time,
      'Date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProshowsRegisteredRecordDocumentEquality
    implements Equality<ProshowsRegisteredRecord> {
  const ProshowsRegisteredRecordDocumentEquality();

  @override
  bool equals(ProshowsRegisteredRecord? e1, ProshowsRegisteredRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.details == e2?.details &&
        e1?.proName == e2?.proName &&
        e1?.festName == e2?.festName &&
        e1?.festYear == e2?.festYear &&
        e1?.venue == e2?.venue &&
        e1?.time == e2?.time &&
        e1?.date == e2?.date;
  }

  @override
  int hash(ProshowsRegisteredRecord? e) => const ListEquality().hash([
        e?.name,
        e?.details,
        e?.proName,
        e?.festName,
        e?.festYear,
        e?.venue,
        e?.time,
        e?.date
      ]);

  @override
  bool isValidKey(Object? o) => o is ProshowsRegisteredRecord;
}
