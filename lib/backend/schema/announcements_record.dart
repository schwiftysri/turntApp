import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnouncementsRecord extends FirestoreRecord {
  AnnouncementsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "typedByName" field.
  String? _typedByName;
  String get typedByName => _typedByName ?? '';
  bool hasTypedByName() => _typedByName != null;

  // "festName" field.
  String? _festName;
  String get festName => _festName ?? '';
  bool hasFestName() => _festName != null;

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "contactDetails" field.
  String? _contactDetails;
  String get contactDetails => _contactDetails ?? '';
  bool hasContactDetails() => _contactDetails != null;

  // "festYear" field.
  String? _festYear;
  String get festYear => _festYear ?? '';
  bool hasFestYear() => _festYear != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _typedByName = snapshotData['typedByName'] as String?;
    _festName = snapshotData['festName'] as String?;
    _eventName = snapshotData['eventName'] as String?;
    _contactDetails = snapshotData['contactDetails'] as String?;
    _festYear = snapshotData['festYear'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('announcements');

  static Stream<AnnouncementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnnouncementsRecord.fromSnapshot(s));

  static Future<AnnouncementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnnouncementsRecord.fromSnapshot(s));

  static AnnouncementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnnouncementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnnouncementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnnouncementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnnouncementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnnouncementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnnouncementsRecordData({
  String? message,
  String? typedByName,
  String? festName,
  String? eventName,
  String? contactDetails,
  String? festYear,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'typedByName': typedByName,
      'festName': festName,
      'eventName': eventName,
      'contactDetails': contactDetails,
      'festYear': festYear,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnnouncementsRecordDocumentEquality
    implements Equality<AnnouncementsRecord> {
  const AnnouncementsRecordDocumentEquality();

  @override
  bool equals(AnnouncementsRecord? e1, AnnouncementsRecord? e2) {
    return e1?.message == e2?.message &&
        e1?.typedByName == e2?.typedByName &&
        e1?.festName == e2?.festName &&
        e1?.eventName == e2?.eventName &&
        e1?.contactDetails == e2?.contactDetails &&
        e1?.festYear == e2?.festYear;
  }

  @override
  int hash(AnnouncementsRecord? e) => const ListEquality().hash([
        e?.message,
        e?.typedByName,
        e?.festName,
        e?.eventName,
        e?.contactDetails,
        e?.festYear
      ]);

  @override
  bool isValidKey(Object? o) => o is AnnouncementsRecord;
}
