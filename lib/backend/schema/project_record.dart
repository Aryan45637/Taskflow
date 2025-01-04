import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectRecord extends FirestoreRecord {
  ProjectRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "goal" field.
  String? _goal;
  String get goal => _goal ?? '';
  bool hasGoal() => _goal != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "leader" field.
  String? _leader;
  String get leader => _leader ?? '';
  bool hasLeader() => _leader != null;

  // "team" field.
  List<DocumentReference>? _team;
  List<DocumentReference> get team => _team ?? const [];
  bool hasTeam() => _team != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _goal = snapshotData['goal'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _leader = snapshotData['leader'] as String?;
    _team = getDataList(snapshotData['team']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('project');

  static Stream<ProjectRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectRecord.fromSnapshot(s));

  static Future<ProjectRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectRecord.fromSnapshot(s));

  static ProjectRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectRecordData({
  String? title,
  String? goal,
  DateTime? dueDate,
  String? leader,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'goal': goal,
      'due_date': dueDate,
      'leader': leader,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectRecordDocumentEquality implements Equality<ProjectRecord> {
  const ProjectRecordDocumentEquality();

  @override
  bool equals(ProjectRecord? e1, ProjectRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.goal == e2?.goal &&
        e1?.dueDate == e2?.dueDate &&
        e1?.leader == e2?.leader &&
        listEquality.equals(e1?.team, e2?.team);
  }

  @override
  int hash(ProjectRecord? e) => const ListEquality()
      .hash([e?.title, e?.goal, e?.dueDate, e?.leader, e?.team]);

  @override
  bool isValidKey(Object? o) => o is ProjectRecord;
}
