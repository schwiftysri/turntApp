import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
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

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "isGroupEvent" field.
  bool? _isGroupEvent;
  bool get isGroupEvent => _isGroupEvent ?? false;
  bool hasIsGroupEvent() => _isGroupEvent != null;

  // "availableSlots" field.
  int? _availableSlots;
  int get availableSlots => _availableSlots ?? 0;
  bool hasAvailableSlots() => _availableSlots != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _eventCategory = snapshotData['eventCategory'] as String?;
    _details = snapshotData['details'] as String?;
    _festName = snapshotData['festName'] as String?;
    _festYear = snapshotData['festYear'] as String?;
    _venue = snapshotData['venue'] as String?;
    _time = snapshotData['time'] as String?;
    _image = snapshotData['image'] as String?;
    _isGroupEvent = snapshotData['isGroupEvent'] as bool?;
    _availableSlots = castToType<int>(snapshotData['availableSlots']);
    _date = snapshotData['Date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? name,
  String? eventCategory,
  String? details,
  String? festName,
  String? festYear,
  String? venue,
  String? time,
  String? image,
  bool? isGroupEvent,
  int? availableSlots,
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
      'image': image,
      'isGroupEvent': isGroupEvent,
      'availableSlots': availableSlots,
      'Date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.eventCategory == e2?.eventCategory &&
        e1?.details == e2?.details &&
        e1?.festName == e2?.festName &&
        e1?.festYear == e2?.festYear &&
        e1?.venue == e2?.venue &&
        e1?.time == e2?.time &&
        e1?.image == e2?.image &&
        e1?.isGroupEvent == e2?.isGroupEvent &&
        e1?.availableSlots == e2?.availableSlots &&
        e1?.date == e2?.date;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.eventCategory,
        e?.details,
        e?.festName,
        e?.festYear,
        e?.venue,
        e?.time,
        e?.image,
        e?.isGroupEvent,
        e?.availableSlots,
        e?.date
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
