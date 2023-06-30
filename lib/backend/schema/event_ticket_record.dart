import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventTicketRecord extends FirestoreRecord {
  EventTicketRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "eventRef" field.
  DocumentReference? _eventRef;
  DocumentReference? get eventRef => _eventRef;
  bool hasEventRef() => _eventRef != null;

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "participantName" field.
  String? _participantName;
  String get participantName => _participantName ?? '';
  bool hasParticipantName() => _participantName != null;

  // "participantRef" field.
  DocumentReference? _participantRef;
  DocumentReference? get participantRef => _participantRef;
  bool hasParticipantRef() => _participantRef != null;

  void _initializeFields() {
    _eventRef = snapshotData['eventRef'] as DocumentReference?;
    _eventName = snapshotData['eventName'] as String?;
    _participantName = snapshotData['participantName'] as String?;
    _participantRef = snapshotData['participantRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventTicket');

  static Stream<EventTicketRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventTicketRecord.fromSnapshot(s));

  static Future<EventTicketRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventTicketRecord.fromSnapshot(s));

  static EventTicketRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventTicketRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventTicketRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventTicketRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventTicketRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventTicketRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventTicketRecordData({
  DocumentReference? eventRef,
  String? eventName,
  String? participantName,
  DocumentReference? participantRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'eventRef': eventRef,
      'eventName': eventName,
      'participantName': participantName,
      'participantRef': participantRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventTicketRecordDocumentEquality implements Equality<EventTicketRecord> {
  const EventTicketRecordDocumentEquality();

  @override
  bool equals(EventTicketRecord? e1, EventTicketRecord? e2) {
    return e1?.eventRef == e2?.eventRef &&
        e1?.eventName == e2?.eventName &&
        e1?.participantName == e2?.participantName &&
        e1?.participantRef == e2?.participantRef;
  }

  @override
  int hash(EventTicketRecord? e) => const ListEquality()
      .hash([e?.eventRef, e?.eventName, e?.participantName, e?.participantRef]);

  @override
  bool isValidKey(Object? o) => o is EventTicketRecord;
}
