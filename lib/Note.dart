class Note {
  int? _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Note(String title, String date, int priority, {String description = ""})
      : _title = title,
        _date = date,
        _priority = priority,
        _description = description;

  Note.withId(int id, String title, String date, int priority,
      {String description = ""})
      : _id = id,
        _title = title,
        _date = date,
        _priority = priority,
        _description = description;

  // getters
  int? get id => _id;

  String get title => _title;

  String get description => _description;

  String get date => _date;

  int get priority => _priority;

  // setters
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set date(String newDate) {
    if (newDate.length <= 255) {
      this._date = newDate;
    }
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  // To save & get info from database

  // Convert note object to map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    return map;
  }

  // Convert map object to note object
  Note.fromMapObject(Map<String, dynamic> map)
      : this._id = map['id'],
        this._title = map['title'],
        this._description = map['description'],
        this._priority = map['priority'],
        this._date = map['date'];
}
