import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "photo_capa" field.
  String? _photoCapa;
  String get photoCapa => _photoCapa ?? '';
  bool hasPhotoCapa() => _photoCapa != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  bool hasInstagram() => _instagram != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "linkedin" field.
  String? _linkedin;
  String get linkedin => _linkedin ?? '';
  bool hasLinkedin() => _linkedin != null;

  // "twitter" field.
  String? _twitter;
  String get twitter => _twitter ?? '';
  bool hasTwitter() => _twitter != null;

  // "Isadmin" field.
  bool? _isadmin;
  bool get isadmin => _isadmin ?? false;
  bool hasIsadmin() => _isadmin != null;

  // "nascimento" field.
  DateTime? _nascimento;
  DateTime? get nascimento => _nascimento;
  bool hasNascimento() => _nascimento != null;

  // "status_color" field.
  Color? _statusColor;
  Color? get statusColor => _statusColor;
  bool hasStatusColor() => _statusColor != null;

  // "inicial" field.
  bool? _inicial;
  bool get inicial => _inicial ?? false;
  bool hasInicial() => _inicial != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _photoCapa = snapshotData['photo_capa'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _instagram = snapshotData['instagram'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _linkedin = snapshotData['linkedin'] as String?;
    _twitter = snapshotData['twitter'] as String?;
    _isadmin = snapshotData['Isadmin'] as bool?;
    _nascimento = snapshotData['nascimento'] as DateTime?;
    _statusColor = getSchemaColor(snapshotData['status_color']);
    _inicial = snapshotData['inicial'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  String? photoCapa,
  String? endereco,
  String? instagram,
  String? facebook,
  String? linkedin,
  String? twitter,
  bool? isadmin,
  DateTime? nascimento,
  Color? statusColor,
  bool? inicial,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'photo_capa': photoCapa,
      'endereco': endereco,
      'instagram': instagram,
      'facebook': facebook,
      'linkedin': linkedin,
      'twitter': twitter,
      'Isadmin': isadmin,
      'nascimento': nascimento,
      'status_color': statusColor,
      'inicial': inicial,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.photoCapa == e2?.photoCapa &&
        e1?.endereco == e2?.endereco &&
        e1?.instagram == e2?.instagram &&
        e1?.facebook == e2?.facebook &&
        e1?.linkedin == e2?.linkedin &&
        e1?.twitter == e2?.twitter &&
        e1?.isadmin == e2?.isadmin &&
        e1?.nascimento == e2?.nascimento &&
        e1?.statusColor == e2?.statusColor &&
        e1?.inicial == e2?.inicial;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.photoCapa,
        e?.endereco,
        e?.instagram,
        e?.facebook,
        e?.linkedin,
        e?.twitter,
        e?.isadmin,
        e?.nascimento,
        e?.statusColor,
        e?.inicial
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
