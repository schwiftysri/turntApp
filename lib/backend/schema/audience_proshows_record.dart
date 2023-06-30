import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AudienceProshowsRecord extends FirestoreRecord {
  AudienceProshowsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userName = snapshotData['userName'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('audience_proshows')
          : FirebaseFirestore.instance.collectionGroup('audience_proshows');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('audience_proshows').doc();

  static Stream<AudienceProshowsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AudienceProshowsRecord.fromSnapshot(s));

  static Future<AudienceProshowsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AudienceProshowsRecord.fromSnapshot(s));

  static AudienceProshowsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AudienceProshowsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AudienceProshowsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AudienceProshowsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AudienceProshowsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AudienceProshowsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAudienceProshowsRecordData({
  String? userName,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userName': userName,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AudienceProshowsRecordDocumentEquality
    implements Equality<AudienceProshowsRecord> {
  const AudienceProshowsRecordDocumentEquality();

  @override
  bool equals(AudienceProshowsRecord? e1, AudienceProshowsRecord? e2) {
    return e1?.userName == e2?.userName && e1?.userRef == e2?.userRef;
  }

  @override
  int hash(AudienceProshowsRecord? e) =>
      const ListEquality().hash([e?.userName, e?.userRef]);

  @override
  bool isValidKey(Object? o) => o is AudienceProshowsRecord;
}
