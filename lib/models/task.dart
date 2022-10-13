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
        endTime: json['startTime'],
        startTime: json['startTime'],
        currentDate: ['currentDate'],
      );
}
