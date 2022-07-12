import 'dart:convert';

class HandelsNaam {
  final String naam;
  final int volgorde;
  HandelsNaam({
    required this.naam,
    required this.volgorde,
  });

  HandelsNaam copyWith({
    String? naam,
    int? volgorde,
  }) {
    return HandelsNaam(
      naam: naam ?? this.naam,
      volgorde: volgorde ?? this.volgorde,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'naam': naam});
    result.addAll({'volgorde': volgorde});

    return result;
  }

  factory HandelsNaam.fromMap(Map<String, dynamic> map) {
    return HandelsNaam(
      naam: map['naam'] ?? '',
      volgorde: map['volgorde']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory HandelsNaam.fromJson(String source) =>
      HandelsNaam.fromMap(json.decode(source));

  @override
  String toString() => 'HandelsNaam(naam: $naam, volgorde: $volgorde)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HandelsNaam &&
        other.naam == naam &&
        other.volgorde == volgorde;
  }

  @override
  int get hashCode => naam.hashCode ^ volgorde.hashCode;
}
