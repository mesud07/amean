class BaseLocal {
  DateTime? time;
  dynamic model;

  BaseLocal({this.model, this.time});

  BaseLocal.fromJson(Map<dynamic, dynamic> json) {
    time = DateTime.parse(json['time']);
    model = json['model'];
  }

  Map<dynamic, dynamic>? toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['time'] = this.time.toString();
    data['model'] = this.model;
    return data;
  }
}
