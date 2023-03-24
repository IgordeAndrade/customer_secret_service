import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

class UniqueID {
  const UniqueID._(this.value);

  factory UniqueID.generate() {
    return UniqueID._(right(const Uuid().v1()));
  }

  factory UniqueID.fromSafeString(String uid) {
    return UniqueID._(uid.isNotEmpty ? right(uid) : left('No uid'));
  }

  final Either<String, String> value;
}