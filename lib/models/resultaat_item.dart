import 'dart:convert';

// TODO: Check which parameters are nullable
class ResultaatItem {
  final String kvkNummer;
  final String rsin;
  final String vestigingsNummer;
  final String handelsnaam;
  final String straatnaam;
  final int huisnummer;
  final String huisnummerToevoeging;
  final String postcode;
  final String plaats;
  final String type;

  // Indicatie of inschrijving actief is
  final String actief;

  // 	Bevat de vervallen handelsnaam of statutaire naam waar
  //  dit zoekresultaat mee gevonden is.
  final String vervallenNaam;

  ResultaatItem(
    this.kvkNummer,
    this.rsin,
    this.vestigingsNummer,
    this.handelsnaam,
    this.straatnaam,
    this.huisnummer,
    this.huisnummerToevoeging,
    this.postcode,
    this.plaats,
    this.type,
    this.actief,
    this.vervallenNaam,
  );

  ResultaatItem copyWith({
    String? kvkNummer,
    String? rsin,
    String? vestigingsNummer,
    String? handelsnaam,
    String? straatnaam,
    int? huisnummer,
    String? huisnummerToevoeging,
    String? postcode,
    String? plaats,
    String? type,
    String? actief,
    String? vervallenNaam,
  }) {
    return ResultaatItem(
      kvkNummer ?? this.kvkNummer,
      rsin ?? this.rsin,
      vestigingsNummer ?? this.vestigingsNummer,
      handelsnaam ?? this.handelsnaam,
      straatnaam ?? this.straatnaam,
      huisnummer ?? this.huisnummer,
      huisnummerToevoeging ?? this.huisnummerToevoeging,
      postcode ?? this.postcode,
      plaats ?? this.plaats,
      type ?? this.type,
      actief ?? this.actief,
      vervallenNaam ?? this.vervallenNaam,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'kvkNummer': kvkNummer});
    result.addAll({'rsin': rsin});
    result.addAll({'vestigingsNummer': vestigingsNummer});
    result.addAll({'handelsnaam': handelsnaam});
    result.addAll({'straatnaam': straatnaam});
    result.addAll({'huisnummer': huisnummer});
    result.addAll({'huisnummerToevoeging': huisnummerToevoeging});
    result.addAll({'postcode': postcode});
    result.addAll({'plaats': plaats});
    result.addAll({'type': type});
    result.addAll({'actief': actief});
    result.addAll({'vervallenNaam': vervallenNaam});

    return result;
  }

  factory ResultaatItem.fromMap(Map<String, dynamic> map) {
    return ResultaatItem(
      map['kvkNummer'] ?? '',
      map['rsin'] ?? '',
      map['vestigingsNummer'] ?? '',
      map['handelsnaam'] ?? '',
      map['straatnaam'] ?? '',
      map['huisnummer']?.toInt() ?? 0,
      map['huisnummerToevoeging'] ?? '',
      map['postcode'] ?? '',
      map['plaats'] ?? '',
      map['type'] ?? '',
      map['actief'] ?? '',
      map['vervallenNaam'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultaatItem.fromJson(String source) =>
      ResultaatItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ResultaatItem(kvkNummer: $kvkNummer, rsin: $rsin, vestigingsNummer: $vestigingsNummer, handelsnaam: $handelsnaam, straatnaam: $straatnaam, huisnummer: $huisnummer, huisnummerToevoeging: $huisnummerToevoeging, postcode: $postcode, plaats: $plaats, type: $type, actief: $actief, vervallenNaam: $vervallenNaam)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ResultaatItem &&
        other.kvkNummer == kvkNummer &&
        other.rsin == rsin &&
        other.vestigingsNummer == vestigingsNummer &&
        other.handelsnaam == handelsnaam &&
        other.straatnaam == straatnaam &&
        other.huisnummer == huisnummer &&
        other.huisnummerToevoeging == huisnummerToevoeging &&
        other.postcode == postcode &&
        other.plaats == plaats &&
        other.type == type &&
        other.actief == actief &&
        other.vervallenNaam == vervallenNaam;
  }

  @override
  int get hashCode {
    return kvkNummer.hashCode ^
        rsin.hashCode ^
        vestigingsNummer.hashCode ^
        handelsnaam.hashCode ^
        straatnaam.hashCode ^
        huisnummer.hashCode ^
        huisnummerToevoeging.hashCode ^
        postcode.hashCode ^
        plaats.hashCode ^
        type.hashCode ^
        actief.hashCode ^
        vervallenNaam.hashCode;
  }
}
