import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FestPassRecord extends FirestoreRecord {
  FestPassRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "FestName" field.
  String? _festName;
  String get festName => _festName ?? '';
  bool hasFestName() => _festName != null;

  // "participantName" field.
  String? _participantName;
  String get participantName => _participantName ?? '';
  bool hasParticipantName() => _participantName != null;

  // "participantRef" field.
  DocumentReference? _participantRef;
  DocumentReference? get participantRef => _participantRef;
  bool hasParticipantRef() => _participantRef != null;

  // "festRef" field.
  DocumentReference? _festRef;
  DocumentReference? get festRef => _festRef;
  bool hasFestRef() => _festRef != null;

  void _initializeFields() {
    _festName = snapshotData['FestName'] as String?;
    _participantName = snapshotData['participantName'] as String?;
    _participantRef = snapshotData['participantRef'] as DocumentReference?;
    _festRef = snapshotData['festRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FestPass');

  static Stream<FestPassRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FestPassRecord.fromSnapshot(s));

  static Future<FestPassRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FestPassRecord.fromSnapshot(s));

  static FestPassRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FestPassRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FestPassRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FestPassRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FestPassRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FestPassRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFestPassRecordData({
  String? festName,
  String? participantName,
  DocumentReference? participantRef,
  DocumentReference? festRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FestName': festName,
      'participantName': participantName,
      'participantRef': participantRef,
      'festRef': festRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class FestPassRecordDocumentEquality implements Equality<FestPassRecord> {
  const FestPassRecordDocumentEquality();

  @override
  bool equals(FestPassRecord? e1, FestPassRecord? e2) {
    return e1?.festName == e2?.festName &&
        e1?.participantName == e2?.participantName &&
        e1?.participantRef == e2?.participantRef &&
        e1?.festRef == e2?.festRef;
  }

  @override
  int hash(FestPassRecord? e) => const ListEquality()
      .hash([e?.festName, e?.participantName, e?.participantRef, e?.festRef]);

  @override
  bool isValidKey(Object? o) => o is FestPassRecord;
}
