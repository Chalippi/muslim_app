class Kota {
  String _id;
  String _nama;

  Kota.fromJson(Map<String, dynamic> parsedJson) {
    _id = parsedJson['id'];
    _nama = parsedJson['nama'];
  }

  String get getId => _id;
  String get getName => _nama;

  static List<Kota> list(List<dynamic> json) {
    return json == null ? [] : json.map((e) => Kota.fromJson(e)).toList();
  }
}
