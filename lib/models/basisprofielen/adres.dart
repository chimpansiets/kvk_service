import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kvk_service/models/basisprofielen/geodata.dart';

class Adres {
  final String type;
  final String indAfgeschermd;
  final String volledigAdres;
  final String straatnaam;
  final int huisnummer;
  final String huisnummerToevoeging;
  final String huisletter;
  final String toevoegingAdres;
  final String postcode;
  final int postbusnummer;
  final String plaats;
  final String straatHuisnummer;
  final String postcodeWoonplaats;
  final String regio;
  final String land;
  List<GeoData>? geoData;
  Adres({
    required this.type,
    required this.indAfgeschermd,
    required this.volledigAdres,
    required this.straatnaam,
    required this.huisnummer,
    required this.huisnummerToevoeging,
    required this.huisletter,
    required this.toevoegingAdres,
    required this.postcode,
    required this.postbusnummer,
    required this.plaats,
    required this.straatHuisnummer,
    required this.postcodeWoonplaats,
    required this.regio,
    required this.land,
    required this.geoData,
  });

  Adres copyWith({
    String? type,
    String? indAfgeschermd,
    String? volledigAdres,
    String? straatnaam,
    int? huisnummer,
    String? huisnummerToevoeging,
    String? huisletter,
    String? toevoegingAdres,
    String? postcode,
    int? postbusnummer,
    String? plaats,
    String? straatHuisnummer,
    String? postcodeWoonplaats,
    String? regio,
    String? land,
    List<GeoData>? geoData,
  }) {
    return Adres(
      type: type ?? this.type,
      indAfgeschermd: indAfgeschermd ?? this.indAfgeschermd,
      volledigAdres: volledigAdres ?? this.volledigAdres,
      straatnaam: straatnaam ?? this.straatnaam,
      huisnummer: huisnummer ?? this.huisnummer,
      huisnummerToevoeging: huisnummerToevoeging ?? this.huisnummerToevoeging,
      huisletter: huisletter ?? this.huisletter,
      toevoegingAdres: toevoegingAdres ?? this.toevoegingAdres,
      postcode: postcode ?? this.postcode,
      postbusnummer: postbusnummer ?? this.postbusnummer,
      plaats: plaats ?? this.plaats,
      straatHuisnummer: straatHuisnummer ?? this.straatHuisnummer,
      postcodeWoonplaats: postcodeWoonplaats ?? this.postcodeWoonplaats,
      regio: regio ?? this.regio,
      land: land ?? this.land,
      geoData: geoData ?? this.geoData,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'type': type});
    result.addAll({'indAfgeschermd': indAfgeschermd});
    result.addAll({'volledigAdres': volledigAdres});
    result.addAll({'straatnaam': straatnaam});
    result.addAll({'huisnummer': huisnummer});
    result.addAll({'huisnummerToevoeging': huisnummerToevoeging});
    result.addAll({'huisletter': huisletter});
    result.addAll({'toevoegingAdres': toevoegingAdres});
    result.addAll({'postcode': postcode});
    result.addAll({'postbusnummer': postbusnummer});
    result.addAll({'plaats': plaats});
    result.addAll({'straatHuisnummer': straatHuisnummer});
    result.addAll({'postcodeWoonplaats': postcodeWoonplaats});
    result.addAll({'regio': regio});
    result.addAll({'land': land});
    if (geoData != null) {
      result.addAll({'geoData': geoData!.map((x) => x.toMap()).toList()});
    }

    return result;
  }

  factory Adres.fromMap(Map<String, dynamic> map) {
    return Adres(
      type: map['type'] ?? '',
      indAfgeschermd: map['indAfgeschermd'] ?? '',
      volledigAdres: map['volledigAdres'] ?? '',
      straatnaam: map['straatnaam'] ?? '',
      huisnummer: map['huisnummer']?.toInt() ?? 0,
      huisnummerToevoeging: map['huisnummerToevoeging'] ?? '',
      huisletter: map['huisletter'] ?? '',
      toevoegingAdres: map['toevoegingAdres'] ?? '',
      postcode: map['postcode'] ?? '',
      postbusnummer: map['postbusnummer']?.toInt() ?? 0,
      plaats: map['plaats'] ?? '',
      straatHuisnummer: map['straatHuisnummer'] ?? '',
      postcodeWoonplaats: map['postcodeWoonplaats'] ?? '',
      regio: map['regio'] ?? '',
      land: map['land'] ?? '',
      geoData: map['geoData'] != null
          ? List<GeoData>.from(map['geoData']?.map((x) => GeoData.fromMap(x)))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Adres.fromJson(String source) => Adres.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Adres(type: $type, indAfgeschermd: $indAfgeschermd, volledigAdres: $volledigAdres, straatnaam: $straatnaam, huisnummer: $huisnummer, huisnummerToevoeging: $huisnummerToevoeging, huisletter: $huisletter, toevoegingAdres: $toevoegingAdres, postcode: $postcode, postbusnummer: $postbusnummer, plaats: $plaats, straatHuisnummer: $straatHuisnummer, postcodeWoonplaats: $postcodeWoonplaats, regio: $regio, land: $land, geoData: $geoData)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Adres &&
        other.type == type &&
        other.indAfgeschermd == indAfgeschermd &&
        other.volledigAdres == volledigAdres &&
        other.straatnaam == straatnaam &&
        other.huisnummer == huisnummer &&
        other.huisnummerToevoeging == huisnummerToevoeging &&
        other.huisletter == huisletter &&
        other.toevoegingAdres == toevoegingAdres &&
        other.postcode == postcode &&
        other.postbusnummer == postbusnummer &&
        other.plaats == plaats &&
        other.straatHuisnummer == straatHuisnummer &&
        other.postcodeWoonplaats == postcodeWoonplaats &&
        other.regio == regio &&
        other.land == land &&
        listEquals(other.geoData, geoData);
  }

  @override
  int get hashCode {
    return type.hashCode ^
        indAfgeschermd.hashCode ^
        volledigAdres.hashCode ^
        straatnaam.hashCode ^
        huisnummer.hashCode ^
        huisnummerToevoeging.hashCode ^
        huisletter.hashCode ^
        toevoegingAdres.hashCode ^
        postcode.hashCode ^
        postbusnummer.hashCode ^
        plaats.hashCode ^
        straatHuisnummer.hashCode ^
        postcodeWoonplaats.hashCode ^
        regio.hashCode ^
        land.hashCode ^
        geoData.hashCode;
  }
}
