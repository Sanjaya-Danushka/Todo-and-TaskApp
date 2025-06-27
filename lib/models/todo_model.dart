import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 2)
class Todo {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final DateTime date;

  @HiveField(3)
  final DateTime time;

  @HiveField(4)
  final bool isDone;

  Todo({
    String? id,
    required this.title,
    required this.isDone,
    required this.date,
    required this.time,
  }) : id = id ?? const Uuid().v4();
}
