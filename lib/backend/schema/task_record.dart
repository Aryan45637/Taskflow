import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskRecord extends FirestoreRecord {
  TaskRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "task_title" field.
  String? _taskTitle;
  String get taskTitle => _taskTitle ?? '';
  bool hasTaskTitle() => _taskTitle != null;

  // "task_detail" field.
  String? _taskDetail;
  String get taskDetail => _taskDetail ?? '';
  bool hasTaskDetail() => _taskDetail != null;

  // "completed_flag" field.
  bool? _completedFlag;
  bool get completedFlag => _completedFlag ?? false;
  bool hasCompletedFlag() => _completedFlag != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "project_ref" field.
  DocumentReference? _projectRef;
  DocumentReference? get projectRef => _projectRef;
  bool hasProjectRef() => _projectRef != null;

  // "plan_ref" field.
  DocumentReference? _planRef;
  DocumentReference? get planRef => _planRef;
  bool hasPlanRef() => _planRef != null;

  // "task_assigned" field.
  DocumentReference? _taskAssigned;
  DocumentReference? get taskAssigned => _taskAssigned;
  bool hasTaskAssigned() => _taskAssigned != null;

  // "completed_date" field.
  DateTime? _completedDate;
  DateTime? get completedDate => _completedDate;
  bool hasCompletedDate() => _completedDate != null;

  void _initializeFields() {
    _taskTitle = snapshotData['task_title'] as String?;
    _taskDetail = snapshotData['task_detail'] as String?;
    _completedFlag = snapshotData['completed_flag'] as bool?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _projectRef = snapshotData['project_ref'] as DocumentReference?;
    _planRef = snapshotData['plan_ref'] as DocumentReference?;
    _taskAssigned = snapshotData['task_assigned'] as DocumentReference?;
    _completedDate = snapshotData['completed_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Task');

  static Stream<TaskRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaskRecord.fromSnapshot(s));

  static Future<TaskRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaskRecord.fromSnapshot(s));

  static TaskRecord fromSnapshot(DocumentSnapshot snapshot) => TaskRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaskRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaskRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaskRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaskRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaskRecordData({
  String? taskTitle,
  String? taskDetail,
  bool? completedFlag,
  DateTime? dueDate,
  DocumentReference? projectRef,
  DocumentReference? planRef,
  DocumentReference? taskAssigned,
  DateTime? completedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task_title': taskTitle,
      'task_detail': taskDetail,
      'completed_flag': completedFlag,
      'due_date': dueDate,
      'project_ref': projectRef,
      'plan_ref': planRef,
      'task_assigned': taskAssigned,
      'completed_date': completedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaskRecordDocumentEquality implements Equality<TaskRecord> {
  const TaskRecordDocumentEquality();

  @override
  bool equals(TaskRecord? e1, TaskRecord? e2) {
    return e1?.taskTitle == e2?.taskTitle &&
        e1?.taskDetail == e2?.taskDetail &&
        e1?.completedFlag == e2?.completedFlag &&
        e1?.dueDate == e2?.dueDate &&
        e1?.projectRef == e2?.projectRef &&
        e1?.planRef == e2?.planRef &&
        e1?.taskAssigned == e2?.taskAssigned &&
        e1?.completedDate == e2?.completedDate;
  }

  @override
  int hash(TaskRecord? e) => const ListEquality().hash([
        e?.taskTitle,
        e?.taskDetail,
        e?.completedFlag,
        e?.dueDate,
        e?.projectRef,
        e?.planRef,
        e?.taskAssigned,
        e?.completedDate
      ]);

  @override
  bool isValidKey(Object? o) => o is TaskRecord;
}
