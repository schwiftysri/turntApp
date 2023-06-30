import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProshowTicketRecord extends FirestoreRecord {
  ProshowTicketRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "proshowName" field.
  String? _proshowName;
  String get proshowName => _proshowName ?? '';
  bool hasProshowName() => _proshowName != null;

  // "prshowRef" field.
  DocumentReference? _prshowRef;
  DocumentReference? get prshowRef => _prshowRef;
  bool hasPrshowRef() => _prshowRef != null;

  // "audienceName" field.
  String? _audienceName;
  String get audienceName => _audienceName ?? '';
  bool hasAudienceName() => _audienceName != null;

  // "audienceRef" field.
  DocumentReference? _audienceRef;
  DocumentReference? get audienceRef => _audienceRef;
  bool hasAudienceRef() => _audienceRef != null;

  void _initializeFields() {
    _proshowName = snapshotData['proshowName'] as String?;
    _prshowRef = snapshotData['prshowRef'] as DocumentReference?;
    _audienceName = snapshotData['audienceName'] as String?;
    _audienceRef = snapshotData['audienceRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('proshowTicket');

  static Stream<ProshowTicketRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProshowTicketRecord.fromSnapshot(s));

  static Future<ProshowTicketRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProshowTicketRecord.fromSnapshot(s));

  static ProshowTicketRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProshowTicketRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProshowTicketRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProshowTicketRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProshowTicketRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProshowTicketRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProshowTicketRecordData({
  String? proshowName,
  DocumentReference? prshowRef,
  String? audienceName,
  DocumentReference? audienceRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'proshowName': proshowName,
      'prshowRef': prshowRef,
      'audienceName': audienceName,
      'audienceRef': audienceRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProshowTicketRecordDocumentEquality
    implements Equality<ProshowTicketRecord> {
  const ProshowTicketRecordDocumentEquality();

  @override
  bool equals(ProshowTicketRecord? e1, ProshowTicketRecord? e2) {
    return e1?.proshowName == e2?.proshowName &&
        e1?.prshowRef == e2?.prshowRef &&
        e1?.audienceName == e2?.audienceName &&
        e1?.audienceRef == e2?.audienceRef;
  }

  @override
  int hash(ProshowTicketRecord? e) => const ListEquality()
      .hash([e?.proshowName, e?.prshowRef, e?.audienceName, e?.audienceRef]);

  @override
  bool isValidKey(Object? o) => o is ProshowTicketRecord;
}
