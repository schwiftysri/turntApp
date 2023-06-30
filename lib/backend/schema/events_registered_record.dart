import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRegisteredRecord extends FirestoreRecord {
  EventsRegisteredRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "eventCategory" field.
  String? _eventCategory;
  String get eventCategory => _eventCategory ?? '';
  bool hasEventCategory() => _eventCategory != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

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
    _eventCategory = snapshotData['eventCategory'] as String?;
    _details = snapshotData['details'] as String?;
    _festName = snapshotData['festName'] as String?;
    _festYear = snapshotData['festYear'] as String?;
    _venue = snapshotData['venue'] as String?;
    _time = snapshotData['time'] as String?;
    _date = snapshotData['Date'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('eventsRegistered')
          : FirebaseFirestore.instance.collectionGroup('eventsRegistered');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('eventsRegistered').doc();

  static Stream<EventsRegisteredRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRegisteredRecord.fromSnapshot(s));

  static Future<EventsRegisteredRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EventsRegisteredRecord.fromSnapshot(s));

  static EventsRegisteredRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventsRegisteredRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRegisteredRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRegisteredRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRegisteredRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRegisteredRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRegisteredRecordData({
  String? name,
  String? eventCategory,
  String? details,
  String? festName,
  String? festYear,
  String? venue,
  String? time,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'eventCategory': eventCategory,
      'details': details,
      'festName': festName,
      'festYear': festYear,
      'venue': venue,
      'time': time,
      'Date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRegisteredRecordDocumentEquality
    implements Equality<EventsRegisteredRecord> {
  const EventsRegisteredRecordDocumentEquality();

  @override
  bool equals(EventsRegisteredRecord? e1, EventsRegisteredRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.eventCategory == e2?.eventCategory &&
        e1?.details == e2?.details &&
        e1?.festName == e2?.festName &&
        e1?.festYear == e2?.festYear &&
        e1?.venue == e2?.venue &&
        e1?.time == e2?.time &&
        e1?.date == e2?.date;
  }

  @override
  int hash(EventsRegisteredRecord? e) => const ListEquality().hash([
        e?.name,
        e?.eventCategory,
        e?.details,
        e?.festName,
        e?.festYear,
        e?.venue,
        e?.time,
        e?.date
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRegisteredRecord;
}
