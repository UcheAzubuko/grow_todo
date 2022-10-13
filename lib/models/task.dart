class Task {
  final int? id;
  final String name;
  final DateTime startTime;
  final DateTime endTime;
  final DateTime currentDate;

  const Task(
      {required this.id,
      required this.name,
      required this.startTime,
      required this.endTime,
      required this.currentDate});

  factory Task.fromMap(Map<String, dynamic> json) => Task(
        id: json['id'],
        name: json['name'],
        startTime: json['startTime'],
        endTime: json['startTime'],
        currentDate: json['currentDate'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'startTime': startTime,
      'endTime': endTime,
      'currentDate': currentDate
    };
  }
}

class DatabaseHelper {
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  // Future<Database> get database async => _database ??= await _initDatabase();
}
