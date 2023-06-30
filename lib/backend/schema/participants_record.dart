import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParticipantsRecord extends FirestoreRecord {
  ParticipantsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userContactNo" field.
  String? _userContactNo;
  String get userContactNo => _userContactNo ?? '';
  bool hasUserContactNo() => _userContactNo != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "groupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "groupRef" field.
  DocumentReference? _groupRef;
  DocumentReference? get groupRef => _groupRef;
  bool hasGroupRef() => _groupRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userName = snapshotData['userName'] as String?;
    _userContactNo = snapshotData['userContactNo'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _groupName = snapshotData['groupName'] as String?;
    _userEmail = snapshotData['userEmail'] as String?;
    _groupRef = snapshotData['groupRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('participants')
          : FirebaseFirestore.instance.collectionGroup('participants');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('participants').doc();

  static Stream<ParticipantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParticipantsRecord.fromSnapshot(s));

  static Future<ParticipantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParticipantsRecord.fromSnapshot(s));

  static ParticipantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParticipantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParticipantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParticipantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParticipantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParticipantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParticipantsRecordData({
  String? userName,
  String? userContactNo,
  DocumentReference? userRef,
  String? groupName,
  String? userEmail,
  DocumentReference? groupRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userName': userName,
      'userContactNo': userContactNo,
      'userRef': userRef,
      'groupName': groupName,
      'userEmail': userEmail,
      'groupRef': groupRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParticipantsRecordDocumentEquality
    implements Equality<ParticipantsRecord> {
  const ParticipantsRecordDocumentEquality();

  @override
  bool equals(ParticipantsRecord? e1, ParticipantsRecord? e2) {
    return e1?.userName == e2?.userName &&
        e1?.userContactNo == e2?.userContactNo &&
        e1?.userRef == e2?.userRef &&
        e1?.groupName == e2?.groupName &&
        e1?.userEmail == e2?.userEmail &&
        e1?.groupRef == e2?.groupRef;
  }

  @override
  int hash(ParticipantsRecord? e) => const ListEquality().hash([
        e?.userName,
        e?.userContactNo,
        e?.userRef,
        e?.groupName,
        e?.userEmail,
        e?.groupRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ParticipantsRecord;
}
