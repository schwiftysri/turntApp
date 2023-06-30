import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventCategoriesRecord extends FirestoreRecord {
  EventCategoriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventCategories');

  static Stream<EventCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventCategoriesRecord.fromSnapshot(s));

  static Future<EventCategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventCategoriesRecord.fromSnapshot(s));

  static EventCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventCategoriesRecordData({
  String? name,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventCategoriesRecordDocumentEquality
    implements Equality<EventCategoriesRecord> {
  const EventCategoriesRecordDocumentEquality();

  @override
  bool equals(EventCategoriesRecord? e1, EventCategoriesRecord? e2) {
    return e1?.name == e2?.name && e1?.image == e2?.image;
  }

  @override
  int hash(EventCategoriesRecord? e) =>
      const ListEquality().hash([e?.name, e?.image]);

  @override
  bool isValidKey(Object? o) => o is EventCategoriesRecord;
}
