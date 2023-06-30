import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupsRecord extends FirestoreRecord {
  GroupsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "groupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  // "groupLeader" field.
  String? _groupLeader;
  String get groupLeader => _groupLeader ?? '';
  bool hasGroupLeader() => _groupLeader != null;

  // "groupPOCno1" field.
  String? _groupPOCno1;
  String get groupPOCno1 => _groupPOCno1 ?? '';
  bool hasGroupPOCno1() => _groupPOCno1 != null;

  // "groupPOCno2" field.
  String? _groupPOCno2;
  String get groupPOCno2 => _groupPOCno2 ?? '';
  bool hasGroupPOCno2() => _groupPOCno2 != null;

  // "groupEmailPOC" field.
  String? _groupEmailPOC;
  String get groupEmailPOC => _groupEmailPOC ?? '';
  bool hasGroupEmailPOC() => _groupEmailPOC != null;

  // "numberOfMembers" field.
  int? _numberOfMembers;
  int get numberOfMembers => _numberOfMembers ?? 0;
  bool hasNumberOfMembers() => _numberOfMembers != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _groupName = snapshotData['groupName'] as String?;
    _groupLeader = snapshotData['groupLeader'] as String?;
    _groupPOCno1 = snapshotData['groupPOCno1'] as String?;
    _groupPOCno2 = snapshotData['groupPOCno2'] as String?;
    _groupEmailPOC = snapshotData['groupEmailPOC'] as String?;
    _numberOfMembers = castToType<int>(snapshotData['numberOfMembers']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('groups')
          : FirebaseFirestore.instance.collectionGroup('groups');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('groups').doc();

  static Stream<GroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupsRecord.fromSnapshot(s));

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupsRecord.fromSnapshot(s));

  static GroupsRecord fromSnapshot(DocumentSnapshot snapshot) => GroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupsRecordData({
  String? groupName,
  String? groupLeader,
  String? groupPOCno1,
  String? groupPOCno2,
  String? groupEmailPOC,
  int? numberOfMembers,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'groupName': groupName,
      'groupLeader': groupLeader,
      'groupPOCno1': groupPOCno1,
      'groupPOCno2': groupPOCno2,
      'groupEmailPOC': groupEmailPOC,
      'numberOfMembers': numberOfMembers,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupsRecordDocumentEquality implements Equality<GroupsRecord> {
  const GroupsRecordDocumentEquality();

  @override
  bool equals(GroupsRecord? e1, GroupsRecord? e2) {
    return e1?.groupName == e2?.groupName &&
        e1?.groupLeader == e2?.groupLeader &&
        e1?.groupPOCno1 == e2?.groupPOCno1 &&
        e1?.groupPOCno2 == e2?.groupPOCno2 &&
        e1?.groupEmailPOC == e2?.groupEmailPOC &&
        e1?.numberOfMembers == e2?.numberOfMembers;
  }

  @override
  int hash(GroupsRecord? e) => const ListEquality().hash([
        e?.groupName,
        e?.groupLeader,
        e?.groupPOCno1,
        e?.groupPOCno2,
        e?.groupEmailPOC,
        e?.numberOfMembers
      ]);

  @override
  bool isValidKey(Object? o) => o is GroupsRecord;
}
