import '../../global/domain/value_objects.dart';

class Task {
  const Task({
    required this.uid,
    required this.taskTitle,
    required this.value,
    required this.date,
  });

  final UniqueID uid;
  final String taskTitle;
  final double value;
  final DateTime date;

  @override
  String toString() {
    return 'Wallet(uid: $uid, taskTitle: $taskTitle, value: $value, date: $date)';
  }

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      uid: UniqueID.fromSafeString(json['uid']),
      taskTitle: json['taskTitle'],
      value: json['value'],
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid.toString(),
      'taskTitle': taskTitle,
      'value': value,
      'date': date.toIso8601String(),
    };
  }

  Task copyWith({
    UniqueID? uid,
    String? taskTitle,
    double? value,
    DateTime? date,
  }) {
    return Task(
      uid: uid ?? this.uid,
      taskTitle: taskTitle ?? this.taskTitle,
      value: value ?? this.value,
      date: date ?? this.date,
    );
  }
}
